<?php

//autoloading the packages in the vendor folder.
require 'braintree/lib/Braintree.php';

include_once '../paypal_demo/dbConnect.php';


//setting up braintree credentials

$params = array(
	"testmode"   => "on",
	"merchantid" => "fhqwwvt3c8jstksb",
	"publickey"  => "z3kjdymd7gmzt68t",
	"privatekey" => "a9d90d4174b818e0eb9a3227c21ad1ee",
);
 
if ($params['testmode'] == "on")
{
	Braintree_Configuration::environment('sandbox');
}
else
{
	Braintree_Configuration::environment('production');
}


Braintree_Configuration::merchantId('fhqwwvt3c8jstksb');
Braintree_Configuration::publicKey('z3kjdymd7gmzt68t');
Braintree_Configuration::privateKey('a9d90d4174b818e0eb9a3227c21ad1ee');


    $product_id = $_POST['product_id'];

	$emailid = $_POST['emailidforinvestor'];
	$getuserid = "SELECT * FROM `crowdfund_user_details` WHERE `crowdfund_user_email` = '".$emailid."'";
	
	$resultid  = mysqli_query($db, $getuserid);
	$rowuserid = mysqli_fetch_array($resultid, MYSQLI_ASSOC);
	
	$getprojectdetails = "SELECT * FROM `crowdfund_project_details` WHERE `crowdfund_project_id` = '".$product_id."'";
	$resultprojectid  = mysqli_query($db, $getprojectdetails);
	$rowprojectdetails = mysqli_fetch_array($resultprojectid, MYSQLI_ASSOC);
	
	
	$oldamountprojectreceived = $rowprojectdetails['crowdfund_total_raised'];
	$totaloldinvestor = $rowprojectdetails['crowdfund_number_of_investors'];
	
	$amount_invested = $_POST['amount_invested'];
	
	$newinvestmentraised = $oldamountprojectreceived + $amount_invested;
	$totalnewinvestors = $totaloldinvestor + 1;
	
	
	
	
	
	
	
	$userid = $rowuserid['crowdfun_user_id'];
	
	$itemName = "Invested in Pitch ID - ".$product_id;


	// Customer details
	$fullname   = $_POST['fullname'];
	$customer_email       = $_POST['emailidforinvestor'];

	// Customer billing details
	$fullname = $_POST['fullname'];
	$email     = $_POST['emailidforinvestor'];
	$address1  = $_POST['address'];
	$city      = $_POST['city'];
	$postcode  = $_POST['zipcode'];
	$country   = $_POST['country'];

// Credit Card Details
	$card_number = $_POST['card_number'];
	$cvv         = $_POST['cvv'];
	$expirationMonth = $_POST['expiry_month'];
	$expirationYear = $_POST['expiry_year'];
	// EOF Credit Card Details

	// Create customer in braintree Vault
	$result = Braintree_Customer::create(array(
		'firstName' => $fullname,
		'email'     => $email,
		'creditCard' => array(
			'number'          => $card_number,
			'cardholderName'  => $fullname,
			'expirationMonth' => $expirationMonth,
			'expirationYear'  => $expirationYear,
			'cvv'             => $cvv,
			'billingAddress' => array(
				'postalCode'        => $postcode,
				'streetAddress'     => $address1,
				'locality'          => $city,
				'countryName'      => $country
			)
		)
	));
	
	if ($result->success) {
		// Save this Braintree_cust_id in DB and use for future transactions too
		$braintree_cust_id = $result->customer->id; 
	} else {
		die("Error : ".$result->message);
	}
	// EOF Create customer in braintree Vault

	$sale = array(
				'customerId' => $braintree_cust_id,
				'amount'   => $_POST['amount_invested'],
				'orderId'  => 'P12345',
				'options' => array('submitForSettlement'   => true)
			);
						
	$result = Braintree_Transaction::sale($sale);


if ($result->success)
	{
		// Execute on payment success event at here
		
		$braintree_cust_id = $result->transaction->_attributes['customer']['id'];
	    $braintree_transaction_id  = $result->transaction->_attributes['id'];
	    
	    $currency = "EUR";
	    $paidAmount = $_POST['amount_invested'];
	    $transactionID = $braintree_transaction_id;
	    $paymentStatus = "Success";
	    $itemNumber = "P123456";
	    
	    // Insert tansaction data into the database
        $sql = "INSERT INTO invested_in(name,item_name,item_number,paid_amount,paid_amount_currency,txn_id,payment_status,created,modified, email, user_id, pitch_id, customer_id_from_paypal) VALUES('".$fullname."','".$itemName."','".$itemNumber."','".$paidAmount."','".$currency."','".$transactionID."','".$paymentStatus."',NOW(),NOW(), '".$emailid."', '".$userid."', '".$product_id."', '".$braintree_cust_id."')";
        
        
        
        $insert = $db->query($sql);
        $last_insert_id = $db->insert_id;
        
        
        $q2 = "UPDATE `crowdfund_project_details` SET `crowdfund_total_raised`='".$newinvestmentraised."',`crowdfund_number_of_investors`='".$totalnewinvestors."' WHERE `crowdfund_project_id` = '".$product_id."'";
        $updatemaintable = $db->query($q2);

	    
	
	    $data['status'] = 1;
	    $data['msg'] = "Success";
	    $data['customerId'] = $braintree_cust_id;
        $data['orderID'] = 'P12345';
        $data['TRANSACTIONID'] = $braintree_transaction_id;
		
	}
	else
	{
		$data['status'] = 0;
	    $data['msg'] = $result->_attributes['message'];
	}
	
	
	
	echo json_encode($data);
	
	 