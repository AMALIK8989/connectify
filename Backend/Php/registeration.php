<?php
include './conn.php'; // PDO connection in $conn

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize & validate input
    $full_name    = trim($_POST['name'] ?? '');
    $username     = trim($_POST['username'] ?? '');
    $email        = filter_var(trim($_POST['email'] ?? ''), FILTER_VALIDATE_EMAIL);
    $retype_email = filter_var(trim($_POST['reemail'] ?? ''), FILTER_VALIDATE_EMAIL);
    $dob          = trim($_POST['dob'] ?? '');
    $age          = filter_var(trim($_POST['age'] ?? ''), FILTER_VALIDATE_INT);
    $password     = trim($_POST['password'] ?? '');
    $repassword   = trim($_POST['repassword'] ?? '');
    $content_type = trim($_POST['contentType'] ?? '');

    // Check required fields
    if (
        !$full_name || !$username || !$email || !$retype_email || !$dob ||
        !$age || !$password || !$repassword || !$content_type
    ) {
        echo json_encode(["status" => false, "message" => "Please fill all the required fields."]);
        exit();
    }

    // Email match check
    if ($email !== $retype_email) {
        echo json_encode(["status" => false, "message" => "Emails do not match!"]);
        exit();
    }

    // Password match check
    if ($password !== $repassword) {
        echo json_encode(["status" => false, "message" => "Passwords do not match!"]);
        exit();
    }

    // Hash password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    try {
        // Prepare insert without retype_email or retype_password
        $stmt = $conn->prepare("
            INSERT INTO users (
                name, username, email, date_of_birth, age, password, content_type
            ) VALUES (
                :full_name, :username, :email, :dob, :age, :password, :content_type
            )
        ");

        // Bind values
        $stmt->bindParam(':full_name', $full_name);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':dob', $dob);
        $stmt->bindParam(':age', $age, PDO::PARAM_INT);
        $stmt->bindParam(':password', $hashed_password);
        $stmt->bindParam(':content_type', $content_type);

        // Execute and return response
        if ($stmt->execute()) {
            echo json_encode(["status" => true, "message" => "User registered successfully."]);
        } else {
            echo json_encode(["status" => false, "message" => "Failed to register user."]);
        }
    } catch (PDOException $e) {
        echo json_encode(["status" => false, "message" => "Database error: " . $e->getMessage()]);
    }
} else {
    echo json_encode(["status" => false, "message" => "Invalid request method."]);
}
?>
