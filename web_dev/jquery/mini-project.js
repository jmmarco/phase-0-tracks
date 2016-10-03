// Load jQuery when the document is ready
$(document).ready(function() {

  // Save the choices select options
  var target = $("#choices");

  // Bind the event handler to the event that changes
  target.change(function() {
    // Some logic
    if (target.val() == 2) {
      $("body").append("<div class='correct'>That's right!</div>");
    } else {
      $("body").append("<div class='incorrect'>Not quite..</div>");
      // Remove the incorrect warning
      $('.incorrect').hide('slow');
    }
  });

});
