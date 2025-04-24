<?php
// Database connection parameters
include './Conn.php'

// Create database connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check for connection errors
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Set response header for JSON response
header('Content-Type: application/json');

// Get the POST data from the form
$data = json_decode(file_get_contents("php://input"), true);

// Validate required fields
if (empty($data['fullname']) || empty($data['username']) || empty($data['email']) || empty($data['email1']) ||
    empty($data['dob']) || empty($data['age']) || empty($data['password']) || empty($data['password1']) || 
    empty($data['contentType'])) {
    echo json_encode(["status" => false, "message" => "All fields are required."]);
    exit();
}

// Check if emails match
if ($data['email'] !== $data['email1']) {
    echo json_encode(["status" => false, "message" => "Email addresses do not match."]);
    exit();
}

// Check if passwords match
if ($data['password'] !== $data['password1']) {
    echo json_encode(["status" => false, "message" => "Passwords do not match."]);
    exit();
}

// Check if the age is 18 or older for NSFW content
if ($data['contentType'] == 'NSFW' && $data['age'] < 18) {
    echo json_encode(["status" => false, "message" => "You must be 18 or older to select NSFW content."]);
    exit();
}

// Hash the password
$hashedPassword = password_hash($data['password'], PASSWORD_BCRYPT);

// Check if username already exists
$stmt = $conn->prepare("SELECT * FROM users WHERE username = ?");
$stmt->bind_param("s", $data['username']);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows > 0) {
    echo json_encode(["status" => false, "message" => "Username already exists."]);
    exit();
}

// Prepare the query to insert data into the users table
$stmt = $conn->prepare("INSERT INTO users (name, username, email, retype_email, date_of_birth, age, password, retype_password, content_type, nsfw, sfw)
                        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$nsfw = $data['contentType'] == 'NSFW' ? 1 : 0;
$sfw = $data['contentType'] == 'SFW' ? 1 : 0;

$stmt->bind_param("sssssiissii", $data['fullname'], $data['username'], $data['email'], $data['email1'], 
                  $data['dob'], $data['age'], $hashedPassword, $hashedPassword, $data['contentType'], $nsfw, $sfw);

// Execute the query
if ($stmt->execute()) {
    echo json_encode(["status" => true, "message" => "User registered successfully!"]);
} else {
    echo json_encode(["status" => false, "message" => "Error: " . $stmt->error]);
}

// Close the statement and the connection
$stmt->close();
$conn->close();
?>
