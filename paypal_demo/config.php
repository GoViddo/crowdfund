<?php
/*
 * Basic Site Settings and API Configuration
 */

// Product details
$itemName   = "GoViddo Crowdfunding Investment";
$itemNumber = "P123456";
$payableAmount = 10;
$currency   = "GBP";

 
// PayPal API configuration
define('PAYPAL_API_USERNAME', 'sb-blzsv745455_api1.business.example.com');
define('PAYPAL_API_PASSWORD', 'QC7KCBYDNDTJQR53');
define('PAYPAL_API_SIGNATURE', 'AhZDWzJzu7WgIdxbPCnOKmB8uPwRA5fekNKluwAO.DoH49aoF0KgP3Yk');
define('PAYPAL_SANDBOX', TRUE); //TRUE or FALSE

// Database configuration
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'u450042391_govid');
define('DB_PASSWORD', 'Imran1234');
define('DB_NAME', 'u450042391_govid');