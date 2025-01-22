#!/bin/bash

# Función para manejar errores
handle_error() {
    echo "Error: $1"
    exit 1
}

# 1. Verificar si estamos en el repositorio correcto
echo "Checking if the current repository is 'pinedamg.github.io'..."
if ! git remote -v | grep "pinedamg.github.io"; then
    handle_error "Not in the 'pinedamg.github.io' repository. Please navigate to the correct repo and try again."
fi
echo "Repository confirmed as 'pinedamg.github.io'."

# 2. Confirmar la acción con el usuario
echo "This script will create a backup of 'main', delete local branches (except 'main'), and replace its content with the Agency Jekyll Theme. Proceed? (yes/no)"
read -r confirmation
if [[ "$confirmation" != "yes" ]]; then
    echo "Operation cancelled by the user."
    exit 0
fi

# 3. Eliminar branches locales excepto 'main'
echo "Deleting local branches except 'main'..."
for branch in $(git branch --format="%(refname:short)" | grep -v "main"); do
    git branch -D "$branch" || handle_error "Failed to delete local branch: $branch"
done
echo "Local branches cleaned."

# 4. Crear un branch de respaldo
echo "Creating backup branch..."
backup_branch="backup-main-$(date +%Y%m%d%H%M%S)"
git branch "$backup_branch" || handle_error "Failed to create backup branch."
git push origin "$backup_branch" || handle_error "Failed to push backup branch to remote."
echo "Backup branch created: $backup_branch"

# 5. Limpiar el contenido del branch main
echo "Cleaning main branch..."
git rm -rf . || handle_error "Failed to remove files from main."
git commit -m "Clean branch for new theme installation" || handle_error "Failed to commit cleaned branch."
git push origin main || handle_error "Failed to push cleaned branch to remote."

# 6. Descargar el theme
echo "Installing the Agency Jekyll Theme..."
git pull https://github.com/y7kim/agency-jekyll-theme.git gh-pages --allow-unrelated-histories || handle_error "Failed to pull the theme repository."

# 7. Subir los cambios
echo "Pushing the new theme to your repository..."
git add . || handle_error "Failed to add theme files to staging."
git commit -m "Add Agency Jekyll Theme as base template" || handle_error "Failed to commit theme files."
git push origin main || handle_error "Failed to push new theme to remote repository."

# Finalización
echo "Backup branch created as '$backup_branch', and the Agency Jekyll Theme has been installed on 'main'."
