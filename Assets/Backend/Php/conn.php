<?php
// Database Configuration
$host = "localhost";
$dbname = "connectify";
$username = "root";
$password = "";

// Optional: Logging (optional for debugging)
$log_file = "db_connection.log";

function logMessage($message)
{
    global $log_file;
    $timestamp = date("Y-m-d H:i:s");
    $log_entry = "[" . $timestamp . "] " . $message . PHP_EOL;
    file_put_contents($log_file, $log_entry, FILE_APPEND);
}

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // ✅ Silent success (for API use)
    logMessage("✅ Database connection successful.");
} catch (PDOException $e) {
    logMessage("❌ Database connection failed: " . $e->getMessage());

    // Return proper JSON error if used inside an API
    header("Content-Type: application/json");
    echo json_encode([
        "success" => false,
        "message" => "Database connection error."
    ]);
    exit();
}
