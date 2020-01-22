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
define('PAYPAL_API_USERNAME', 'sb-jx4uc770378_api1.business.example.com');
define('PAYPAL_API_PASSWORD', 'Q5YRYT2UF7T3E5NT');
define('PAYPAL_API_SIGNATURE', 'AvG3cMEHRHLCb2u52bTMs75srqdcAGs2TkTqOd0CfTMTQLdcd-SJwdJ6');
define('PAYPAL_SANDBOX', TRUE); //TRUE or FALSE

// Database configuration
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'u450042391_govid');
define('DB_PASSWORD', 'Imran1234');
define('DB_NAME', 'u450042391_govid');