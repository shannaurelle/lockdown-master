<?php

//API Url
$url = 'https://pg-sandbox.paymaya.com/checkout/v1/checkouts';

// $json_file = 'transaction.json';

//Initiate cURL.
$ch = curl_init($url);

// $jsonDataEncoded = file_get_contents($json_file);

//The JSON data.

$jsonData = array(

	// Total Amount Details
    'totalAmount' => array(
    	'value' => 100,
    	'currency' => 'PHP',
    	'details' => array(
    		'discount' => 0,
	        'serviceCharge' => 0,
	        'shippingFee' => 0,
	        'tax' => 0,
	        'subtotal' => 100
    	),
    ),

    // Buyer Details
    'buyer' => array(
		'firstName' => 'Shann Aurelle',
		'middleName' => 'Graniten',
		'lastName' => 'Ripalda',
		'birthday' => '2001-02-03',
		'customerSince' => '2010-10-25',
		'sex' => 'M',
		'contact' => array(
			'phone' => '+639181008888',
			'email' => 'merchant@merchantsite.com'
		),
		'shippingAddress' => array(
			'firstName' => 'Shann Aurelle',
	        'middleName' => 'Graniten',
	        'lastName' => 'Ripalda',
	        'phone' => '+639181008888',
	        'email' => 'merchant@merchantsite.com',
	        'line1' => '6F Launchpad',
	        'line2' => 'Reliance Street',
	        'city' => 'Mandaluyong City',
	        'state' => 'Metro Manila',
	        'zipCode' => '1552',
	        'countryCode' => 'PH',
	        'shippingType' => 'ST'
		),
		'billingAddress' => array(
			'line1' => '6F Launchpad',
	        'line2' => 'Reliance Street',
	        'city' => 'Mandaluyong City',
	        'state' => 'Metro Manila',
	        'zipCode' => '1552',
	        'countryCode' => 'PH'
		),
    ),

    // Item Details (Real Looping Hours)
    'items' => array(
    	array(
    		'name' => '100kg fresh tomatoes',
	        'quantity' => 1,
	        'code' => 'CVG-096732',
	        'description' => 'Fruits and Vegetables',

	        'amount' => array(
	        	'value' => 100,
	        	'details' => array(
	        		'discount' => 0,
		            'serviceCharge' => 0,
		            'shippingFee' => 0,
		            'tax' => 0,
		            'subtotal' => 100
	        	)
	        ),

	        'totalAmount' => array(
	        	'value' => 200,
	        	'details' => array(
	        		'discount' => 0,
		            'serviceCharge' => 0,
		            'shippingFee' => 0,
		            'tax' => 0,
		            'subtotal' => 200
	        	)
	        ),
    	),
    	array(
    		'name' => '100kg fresh tomatoes',
	        'quantity' => 1,
	        'code' => 'CVG-096732',
	        'description' => 'Fruits and Vegetables',

	        'amount' => array(
	        	'value' => 100,
	        	'details' => array(
	        		'discount' => 0,
		            'serviceCharge' => 0,
		            'shippingFee' => 0,
		            'tax' => 0,
		            'subtotal' => 100
	        	)
	        ),

	        'totalAmount' => array(
	        	'value' => 200,
	        	'details' => array(
	        		'discount' => 0,
		            'serviceCharge' => 0,
		            'shippingFee' => 0,
		            'tax' => 0,
		            'subtotal' => 200
	        	)
	        ),
    	),
    ),

    // Redirect Details

    'redirectUrl' => array(
		'success' => 'http://localhost/lockdown-master/shop.php?checkout=success',
		'failure' => 'http://localhost/lockdown-master/failure/',
		'cancel' => 'http://localhost/lockdown-master/cancel/'
    ),

    'requestReferenceNumber' => '1551191039',
    'metadata' => array(),
);

//Encode the array into JSON.
$jsonDataEncoded = json_encode($jsonData);

// Paymaya Sandbox 5 Keys
$public_key = "pk-NCLk7JeDbX1m22ZRMDYO9bEPowNWT5J4aNIKIbcTy2a:";
$secret_key = "sk-8MqXdZYWV9UJB92Mc0i149CtzTWT7BYBQeiarM27iAi";

//encode public key in base64 encoding
$public_key = base64_encode($public_key);

$header = array();
$header[] = 'Content-type: application/json';
$header[] = 'Authorization: Basic '.$public_key;

//Tell cURL that we want to send a POST request.
curl_setopt($ch, CURLOPT_POST, 1);

//Attach our encoded JSON string to the POST fields.
curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonDataEncoded);

//Set the content type to application/json
curl_setopt($ch, CURLOPT_HTTPHEADER, $header); 

//Set the return type of the curl_exec function to a string instead of a boolean
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

//Execute the request
$result = curl_exec($ch);

//close the curl session
curl_close($ch);

var_dump($result);

// decode the contents
$jsonDataDecoded = json_decode($result, TRUE);
$redirectUrl = $jsonDataDecoded['redirectUrl'];

// test print
echo $jsonDataEncoded;

// redirect user to the checkout page 
header("Location: $redirectUrl");