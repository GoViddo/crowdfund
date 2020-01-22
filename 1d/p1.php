<?php

require "boot.php";

if (empty($_POST['payment_method_nonce'])) {
    //header('location: index.php');
}

print_r($_POST);

$result = Braintree_Transaction::sale([
  'amount' => $_POST['amount'], 
  'paymentMethodNonce' => $_POST['payment_method_nonce'],
  'customer' => [
    'firstName' => $_POST['firstName'],
    'lastName' => $_POST['lastName'],    
  ],
  'options' => [
    'submitForSettlement' => true
  ]
]);

if ($result->success === true) {
    
} else
{
    print_r($result->errors);
    die();
}

//Now, i think all done. Let's test it out.
?>
