<?php
include './conn.php'; // Include database connection file
session_start(); // Start the session as early as possible

// Log the request method for debugging
error_log("Request method: " . $_SERVER['REQUEST_METHOD']); 

// Check if the request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'] ?? ''; // Capture email
    $password = $_POST['password'] ?? ''; // Capture password

    // Log received email (but avoid logging the password for security reasons)
    error_log("Received email: $email");

    // Check if the database connection is successful
    if (!$conn) {
        echo json_encode(['status' => 'error', 'message' => 'Database connection failed']);
        exit;
    }

    // Prepare SQL statement to fetch user by email
    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");

    // Check if the statement preparation failed
    if (!$stmt) {
        error_log("Prepare failed: " . $conn->error);
        echo json_encode(['status' => 'error', 'message' => 'Database error: ' . $conn->error]);
        exit;
    }

    // Bind the email parameter for the query
    $stmt->bind_param("s", $email); // "s" for string (email)

    // Execute the query and check for errors
    if (!$stmt->execute()) {
        error_log("Execute failed: " . $stmt->error);
        echo json_encode(['status' => 'error', 'message' => 'Database error: ' . $stmt->error]);
        exit;
    }

    // Get the result of the query
    $result = $stmt->get_result();

    // Initialize an empty array to hold the data
    $userData = [];

    if ($result->num_rows > 0) {
        // Fetch all rows and add them to the array (if multiple users)
        while ($data = $result->fetch_assoc()) {
            // Verify the provided password with the stored hashed password
            if (password_verify($password, $data['password'])) {
                // Password matches, store the user data in the array
                $userData[] = $data;
            }
        }

        if (count($userData) > 0) {
            // If user data exists, return success
            $_SESSION['abc'] = $userData[0]['email']; // Store email in session
            echo json_encode([
                'status' => 'success',
                'message' => 'Login successful',
                'user_data' => $userData, // Return the user data
            ]);
        } else {
            // If password does not match
            echo json_encode(['status' => 'error', 'message' => 'Invalid username or password.']);
        }
    } else {
        // No user found with the given email
        echo json_encode(['status' => 'error', 'message' => 'Invalid username or password.']);
    }

    // Close the statement and connection
    $stmt->close();
} else {
    // Invalid request method
    echo json_encode(['status' => 'error', 'message' => 'Invalid request method.']);
}

// Close the database connection
$conn->close();
?>
