<?php

// Include configuration file
include_once 'config.php';

// Include database connection file
include_once 'dbConnect.php';

// Include PayPalPro PHP library
require_once 'PaypalPro.class.php';

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    
    // Buyer information
	$name = $_POST['name_on_card'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$zipcode = $_POST['zipcode'];
	$country = $_POST['country'];
	$product_id = $_POST['product_id'];
	$amount_invested = $_POST['amount_invested'];
	
	
	
	$nameArr = explode(' ', $name);
    
    $firstName = !empty($nameArr[0])?$nameArr[0]:'';
    $lastName = !empty($nameArr[1])?$nameArr[1]:'';
    
    $countryCode = 'UK';
    
    
   
	// Card details
	$creditCardNumber = trim(str_replace(" ","",$_POST['card_number']));
	$creditCardType = $_POST['card_type'];
	$expMonth = $_POST['expiry_month'];
	$expYear = $_POST['expiry_year'];
	$cvv = $_POST['cvv'];
    
    // Create an instance of PaypalPro class
	$paypal = new PaypalPro();
	
	$emailid = $_POST['emailidforinvestor'];
	$getuserid = "SELECT * FROM `crowdfund_user_details` WHERE `crowdfund_user_email` = '".$emailid."'";
	$resultid  = mysqli_query($db, $getuserid);
	$rowuserid = mysqli_fetch_array($resultid, MYSQLI_ASSOC);
	
	
	$getprojectdetails = "SELECT * FROM `crowdfund_project_details` WHERE `crowdfund_project_id` = '".$product_id."'";
	$resultprojectid  = mysqli_query($db, $getprojectdetails);
	$rowprojectdetails = mysqli_fetch_array($resultprojectid, MYSQLI_ASSOC);
	
	
	$oldamountprojectreceived = $rowprojectdetails['crowdfund_total_raised'];
	$totaloldinvestor = $rowprojectdetails['crowdfund_number_of_investors'];
	
	
	$newinvestmentraised = $oldamountprojectreceived + $amount_invested;
	$totalnewinvestors = $totaloldinvestor + 1;
	
	
	
	
	
	
	
	$userid = $rowuserid['crowdfun_user_id'];
	
	$itemName = "Invested in Pitch ID - ".$product_id;
	
	// Payment details
    $paypalParams = array(
        'paymentAction' => 'Sale',
		'itemName' => $itemName,
		'itemNumber' => $itemNumber,
        'amount' => $amount_invested,
        'currencyCode' => $currency,
        'creditCardType' => $creditCardType,
        'creditCardNumber' => $creditCardNumber,
        'expMonth' => $expMonth,
        'expYear' => $expYear,
        'cvv' => $cvv,
        'firstName' => $firstName,
        'lastName' => $lastName,
        'city' => $city,
        'zip'	=> $zipcode,
        'countryCode' => $countryCode,
    );
    
    $response = $paypal->paypalCall($paypalParams);
    $paymentStatus = strtoupper($response["ACK"]);
    if($paymentStatus == "SUCCESS"){
		// Transaction info
		$transactionID = $response['TRANSACTIONID'];
		$paidAmount = $response['AMT'];
		
		
		// Insert tansaction data into the database
        $sql = "INSERT INTO invested_in(name,item_name,item_number,paid_amount,paid_amount_currency,txn_id,payment_status,created,modified, email, user_id, pitch_id) VALUES('".$name."','".$itemName."','".$itemNumber."','".$paidAmount."','".$currency."','".$transactionID."','".$paymentStatus."',NOW(),NOW(), '".$emailid."', '".$userid."', '".$product_id."')";
        
        
        
        $insert = $db->query($sql);
        $last_insert_id = $db->insert_id;
        
        
        $q2 = "UPDATE `crowdfund_project_details` SET `crowdfund_total_raised`='".$newinvestmentraised."',`crowdfund_number_of_investors`='".$totalnewinvestors."' WHERE `crowdfund_project_id` = '".$product_id."'";
        $updatemaintable = $db->query($q2);
        
        
        
		
		$data['status'] = 1;
        $data['orderID'] = $last_insert_id;
        $data['TRANSACTIONID'] = $response['TRANSACTIONID'];
    }else{
         $data['status'] = 0;
         
    }
	
	$data['resp'] = $response;
	
	// Transaction status
    echo json_encode($data);
}
?>