#!/bin/bash

# Función para manejar errores
handle_error() {
    echo "Error: $1"
    exit 1
}

# 1. Confirmar la acción con el usuario
echo "This script will delete all branches except 'main'. Do you want to proceed? (yes/no)"
read -r confirmation
if [[ "$confirmation" != "yes" ]]; then
    echo "Operation cancelled by the user."
    exit 0
fi

# 2. Cambiar al branch 'main' si no está chequeado
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [[ "$current_branch" != "main" ]]; then
    echo "Switching to 'main' branch..."
    git checkout main || handle_error "Failed to switch to 'main' branch. Make sure it exists."
fi

# 3. Eliminar todos los branches locales excepto 'main'
echo "Deleting local branches except 'main'..."
for branch in $(git branch --format="%(refname:short)" | grep -v "main"); do
    git branch -D "$branch" || handle_error "Failed to delete local branch: $branch"
done

# 4. Eliminar todos los branches remotos excepto 'main'
echo "Deleting remote branches except 'main'..."
for branch in $(git branch -r --format="%(refname:lstrip=3)" | grep -v "main" | grep -v "HEAD"); do
    git push origin --delete "$branch" || echo "Failed to delete remote branch: $branch"
done

# 5. Eliminar branches específicos si aún existen
echo "Deleting specific branches (backup-main, main-backup)..."
git push origin --delete backup-main || echo "Branch 'backup-main' does not exist or could not be deleted."
git push origin --delete main-backup || echo "Branch 'main-backup' does not exist or could not be deleted."

echo "All branches except 'main' have been deleted successfully."
