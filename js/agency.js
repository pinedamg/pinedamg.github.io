/*!
 * Start Bootstrap - Agnecy Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

$('div.modal').on('show.bs.modal', function() {
	var modal = this;
	var hash = modal.id;
	window.location.hash = hash;
	window.onhashchange = function() {
		if (!location.hash){
			$(modal).modal('hide');
		}
	}
});

document.addEventListener("DOMContentLoaded", function () {
  // Selecciona todos los enlaces dentro del menú de navegación
  document.querySelectorAll("nav a").forEach(function (menuLink) {
      menuLink.addEventListener("click", function () {
          gtag('event', 'click', {
              'event_category': 'Navigation',
              'event_label': menuLink.textContent.trim() // Usa el texto del enlace como etiqueta
          });
      });
  });
});

document.addEventListener("DOMContentLoaded", function () {
    let startTime = Date.now();

    window.addEventListener("beforeunload", function () {
        let timeSpent = Math.round((Date.now() - startTime) / 1000); // Tiempo en segundos
        gtag('event', 'time_on_page', {
            'event_category': 'User Engagement',
            'event_label': document.title,
            'value': timeSpent
        });
    });
});

document.getElementById("contact-form").addEventListener("submit", function (event) {
    gtag('event', 'form_submission_attempt', {
        'event_category': 'Form',
        'event_label': 'Contact Form'
    });
});