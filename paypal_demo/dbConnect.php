<?php

// Database configuration
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'u450042391_govid');
define('DB_PASSWORD', 'Imran1234');
define('DB_NAME', 'u450042391_govid');

// Connect with the database
$db = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Display error if failed to connect
if ($db->connect_errno) {
    printf("Connect failed: %s\n", $db->connect_error);
    exit();
}