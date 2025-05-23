<?php

include_once 'conn.php'; 
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); 
header('Access-Control-Allow-Methods: GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');


if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

try {
    $stmt = $conn->query("SELECT HOBBY_NAME, HOBBY_EMOJI FROM hobbies_and_interests");


    $hobbies = $stmt->fetchAll();

  
    if ($hobbies) {
        echo json_encode([
            'status' => 'success',
            'message' => 'Hobbies and interests fetched successfully',
            'data' => $hobbies
        ]);
    } else {
        echo json_encode([
            'status' => 'success',
            'message' => 'No hobbies or interests found',
            'data' => []
        ]);
    }

} catch (PDOException $e) {
    http_response_code(500); 
    echo json_encode([
        'status' => 'error',
        'message' => 'Database query error: ' . $e->getMessage()
    ]);
} catch (Exception $e) {

    http_response_code(500); 
    echo json_encode([
        'status' => 'error',
        'message' => 'An unexpected error occurred: ' . $e->getMessage()
    ]);
}

?>