$(document).ready(function() {
  console.log("user login script loaded");

  // Spinner reference
  var spinner = $('#spinner'); // Assuming you have an element with id="spinner"

  $('#login-form').on('submit', function(event) {
      event.preventDefault(); // Prevent the default form submission
      console.log('Form submission prevented, ready to send AJAX request.');

      // Show spinner and remove any previous color class
      spinner.removeClass('d-none text-danger text-success'); // Reset spinner color
      spinner.addClass('text-primary'); // Default color while waiting

      // Serialize the form data
      var formData = $(this).serialize(); // Serialize the form data

      $.ajax({
          url: 'http://localhost:82/connectify-main/Assets/Backend/Php/sign-in.php', // Adjust path if needed
          type: 'POST', // Request method
          data: formData, // Data to be sent
          dataType: 'json', // Expected response type
          success: function(data) {
              console.log(data); // Log the response for debugging

              // Hide the spinner once the response is received
              if (data.status === 'success') {
                  // Success: Set green spinner
                  spinner.removeClass('text-primary text-danger').addClass('text-success');
                  
                  // Redirect to the admin dashboard after 1 second
                  setTimeout(function() {
                      window.location.href = 'hobbies.html';
                  }, 1000); // Delay of 1 second
              } else {
                  // Failure: Set red spinner
                  spinner.removeClass('text-primary text-success').addClass('text-danger');
              }

              // After a brief delay, hide the spinner
              setTimeout(function() {
                  spinner.addClass('d-none');
              }, 1000); // Delay of 1 second
          },
          error: function(xhr, status, error) {
              // Handle errors
              console.error('Error:', error);
              console.error('Response:', xhr.responseText); // Log the response text

              // On error, set red spinner
              spinner.removeClass('text-primary text-success').addClass('text-danger');

              // Hide the spinner after a delay
              setTimeout(function() {
                  spinner.addClass('d-none');
              }, 1000); // Delay of 1 second
          }
      });
  });
});
