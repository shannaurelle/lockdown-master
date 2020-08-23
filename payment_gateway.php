<?php
	$con=mysqli_connect("localhost", "root", "");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        
        session_start();


        mysqli_select_db($con, 'lockdown-storage');

		//API Url
		$url = 'https://pg-sandbox.paymaya.com/checkout/v1/checkouts';

		//$json_file = 'transaction.json';

		//Initiate cURL.
		$ch = curl_init($url);

		//$jsonDataEncoded = file_get_contents($json_file);

		// For other parts
		$stmt = mysqli_stmt_init($con);
		$account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT);
        $sqli = "SELECT * FROM accounts AS p INNER JOIN account_info AS c ON p.account_id = c.info_id WHERE c.info_id = ?";
        if(mysqli_stmt_prepare($stmt,$sqli)){
            if(!mysqli_stmt_bind_param($stmt,'i',$account_id)){ echo "<script> alert('preparation failed!'); </script>"; }
            if(!mysqli_stmt_execute($stmt)){ echo "<script> alert('execution failed!'); </script>"; }
            $resulti = mysqli_stmt_get_result($stmt) ?? 0;
        }
        else{
            echo "<script> alert('preparation failed!'); </script>";
        }

        $userInfo = mysqli_fetch_assoc($resulti);
        $userInfo['date_created'] = substr($userInfo['date_created'], 0, 10);

		//The JSON data.=
		$jsonData = array(

		    // Buyer Details
		    'buyer' => array(
				'firstName' => $userInfo['field1'],
				'middleName' => $userInfo['field2'],
				'lastName' => $userInfo['field3'],
				'birthday' => '2001-02-03',
				'customerSince' => $userInfo['date_created'],
				'sex' => 'M',
				'contact' => array(
					'phone' => $userInfo['field5'],
					'email' => $userInfo['field4']
				),
				'shippingAddress' => array(
					'firstName' => $userInfo['field1'],
					'middleName' => $userInfo['field2'],
					'lastName' => $userInfo['field3'],
			        'phone' => $userInfo['field5'],
					'email' => $userInfo['field4'],
			        'line1' => '6F Launchpad',
			        'line2' => 'Reliance Street',
			        'city' => $userInfo['field8'],
			        'state' => $userInfo['field9'],
			        'zipCode' => '1552',
			        'countryCode' => 'PH',
			        'shippingType' => 'ST'
				),
				'billingAddress' => array(
					'line1' => '6F Launchpad',
			        'line2' => 'Reliance Street',
			        'city' => $userInfo['field8'],
			        'state' => $userInfo['field9'],
			        'zipCode' => '1552',
			        'countryCode' => 'PH'
				)
		    ),

		    // Redirect Details
		    'redirectURL' => array(
				'success' => 'http://localhost/lockdown-master/shop.php?checkout=success',
				'failure' => 'http://localhost/lockdown-master/failure/',
				'cancel' => 'http://localhost/lockdown-master/cancel/'
		    ),

		    'requestReferenceNumber' => '1551191039',
		    'metadata' => array(
		    	'subMerchantRequestReferenceNumber' => 'SUBMER-12345',
				'pf' => array(
					'smi' => 'SUB034221',
					'smn' => 'Maya Merchant',
					'mci' => 'MANILA',
					'mpc' => '608',
					'mco' => 'PHL',
					'mcc' => '3415',
					'postalCode' => '1001',
					'contactNo' => '+6329112345',
					'state' => 'Metro Manila',
					'addressLine1' => 'Quezon Boulevard, Quiapo'
				)
		    )
		);

		// Items, the REAL Looping hours
		// Needed variables for tracking
		$shippingFee = 0;
		$subTotalAmount = 0;
		$totalAmount = 0;
		$items = array();
		$subItems = array();
		$dataItems = array();

		// Adds if there's a delivery option
		if ($_POST['delivery_option'] == 'Trucker') {
			$shippingFee = 100;
		}

		$account_id = filter_var($_SESSION['account_id'],FILTER_SANITIZE_NUMBER_INT); 


		//WHAT ARE THESE WHAT ARE THOSE
        $sql = "SELECT * FROM products AS p INNER JOIN cart AS c ON p.product_id = c.product_id WHERE c.cart_id = ?";
        if(mysqli_stmt_prepare($stmt,$sql)){
            if(!mysqli_stmt_bind_param($stmt,'i',$account_id)){ echo "<script> alert('preparation failed!'); </script>"; }
            if(!mysqli_stmt_execute($stmt)){ echo "<script> alert('execution failed!'); </script>"; }
            $result = mysqli_stmt_get_result($stmt) ?? 0;
        }
        else{
            echo "<script> alert('preparation failed!'); </script>";
        }

		while($data = mysqli_fetch_array($result)){
			$subTotalAmount += round($data['product_volume']*$data['product_price'],2);
			$dataItems = array(
	        	'name' => $data['product_name'],
		        'quantity' => $data['product_volume'],
		        'code' => 'CVG-096732',
		        'description' => $data['product_description'],

		        'amount' => array(
		        	'value' => $data['product_price'],
		        	'details' => array(
		        		'discount' => 0,
			            'serviceCharge' => 0,
			            'shippingFee' => 0,
			            'tax' => 0,
			            'subtotal' => $data['product_price']
		        	)
		        ),

		        'totalAmount' => array(
		        	'value' => round($data['product_volume']*$data['product_price'],2),
		        	'details' => array(
		        		'discount' => 0,
			            'serviceCharge' => 0,
			            'shippingFee' => 0,
			            'tax' => 0,
			            'subtotal' => round($data['product_volume']*$data['product_price'],2)
		        	)
		        )
	        );
	        $subItems[] = $dataItems;
		}
		
		$items = array('items' => $subItems);
		$jsonData = array_merge($jsonData, $items);

		$jsonData = array_merge($jsonData,array(
			// Total Amount Details
			'totalAmount' => array(
				'value' => $subTotalAmount + $shippingFee,
				'currency' => 'PHP',
				'details' => array(
					'discount' => 0,
			        'serviceCharge' => 0,
			        'shippingFee' => $shippingFee,
			        'tax' => 0,
			        'subtotal' => $subTotalAmount
				)
			),
		));


		//Encode the array into JSON.

		$jsonDataEncoded = json_encode($jsonData);
		var_dump($jsonDataEncoded)."<br><br><br>";

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
    }
?>