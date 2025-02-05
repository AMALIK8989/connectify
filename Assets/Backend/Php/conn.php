<?php
// Database Configuration
$host = "localhost"; // Change if hosted elsewhere
$dbname = "connectify"; // Your Database Name
$username = "root"; // Your MySQL Username
$password = ""; // Your MySQL Password

// Log File
$log_file = "db_connection.log";

// Function to Log Messages
function logMessage($message)
{
    global $log_file;
    $timestamp = date("Y-m-d H:i:s");
    $log_entry = "[" . $timestamp . "] " . $message . PHP_EOL;
    file_put_contents($log_file, $log_entry, FILE_APPEND);
}

// Establish Connection
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Success Message
    echo "✅ Connected to Database Successfully!";
    logMessage("✅ Database connection successful!");
} catch (PDOException $e) {
    // Failure Message
    echo "❌ Database Connection Failed: " . $e->getMessage();
    logMessage("❌ Database Connection Failed: " . $e->getMessage());
    exit();
}
?>
