import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


  $(document).ready(function() {
    // Show the About section by default when the page loads
    $('#about-container').show(); // Ensure it's visible on page load

    // When the About link is clicked
    $('#about-link').on('click', function(event) {
      event.preventDefault(); // Prevent default link behavior (no page reload)
      
      // Smooth scroll to the About section immediately
      $('html, body').animate({
        scrollTop: $('#about-container').offset().top
      }, 1000); // Scroll duration in ms (adjust if needed)
    });
  });

  $(document).ready(function() {
    // Show the About section by default when the page loads
    $('#service-container').show(); // Ensure it's visible on page load

    // When the About link is clicked
    $('#service-link').on('click', function(event) {
      event.preventDefault(); // Prevent default link behavior (no page reload)
      
      // Smooth scroll to the About section immediately
      $('html, body').animate({
        scrollTop: $('#service-container').offset().top
      }, 1000); // Scroll duration in ms (adjust if needed)
    });
  });

  $(document).ready(function() {
    // Show the About section by default when the page loads
    $('#contact-container').show(); // Ensure it's visible on page load

    // When the About link is clicked
    $('#contact-link').on('click', function(event) {
      event.preventDefault(); // Prevent default link behavior (no page reload)
      
      // Smooth scroll to the About section immediately
      $('html, body').animate({
        scrollTop: $('#contact-container').offset().top
      }, 1000); // Scroll duration in ms (adjust if needed)
    });
  });