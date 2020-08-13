<?php

//API Url
$url = 'https://pg-sandbox.paymaya.com/checkout/v1/checkouts';
$json_file = 'transaction.json';
//Initiate cURL.
$ch = curl_init($url);

$jsonDataEncoded = file_get_contents($json_file);

//The JSON data.
/*
$jsonData = array(
    'useringType": "ST" // ST - for standard, SD - for same day
    },name' => 'MyUsername',
    'password' => 'MyPassword'
);
*/
//Encode the array into JSON.
//$jsonDataEncoded = json_encode($jsonData);

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

// redirect user to the checkout page 
header("Location: $redirectUrl");