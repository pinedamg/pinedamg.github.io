document.getElementById("contact-form").addEventListener("submit", async function(event) {
    event.preventDefault(); // Evita el recargo de la página
    var status = document.getElementById("form-status");
    var form = event.target;
    var data = new FormData(form);

    try {
        let response = await fetch(form.action, {
            method: form.method,
            body: data,
            headers: { 'Accept': 'application/json' }
        });

        if (response.ok) {
            status.innerHTML = "<p style='color: green;'>Thank you! Your message has been sent.</p>";
            form.reset();
        } else {
            let result = await response.json();
            if (result.errors) {
                status.innerHTML = "<p style='color: red;'>" + result.errors.map(error => error.message).join(", ") + "</p>";
            } else {
                status.innerHTML = "<p style='color: red;'>Oops! Something went wrong.</p>";
            }
        }
    } catch (error) {
        status.innerHTML = "<p style='color: red;'>Oops! There was a problem submitting your form.</p>";
    }
});