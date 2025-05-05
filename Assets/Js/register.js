$("#regForm").on("submit", function(e) {
    e.preventDefault();
    
    $.ajax({
        url: 'http://localhost:82/connectify-main/Assets/Backend/Php/registeration.php', 
        type: 'POST',
        data: $(this).serialize(), 
        dataType: "json", 
        success: function (response) {
            console.log(response);
            if (response.status === true) {
                alert('Data inserted successfully!');
                $('#regForm').html(''); 
            } else {
                alert(response.message || 'Error inserting data.');
            }
        },
        error: function (xhr, status, error) {
            console.error("XHR:", xhr);
            console.error("Status:", status);
            console.error("Error:", error);
            alert('An error occurred while processing your request: ' + xhr.responseText);
        }
    });
});
