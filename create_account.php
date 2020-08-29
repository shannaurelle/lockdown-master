<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

// Security purposes
if($_SERVER['REQUEST_METHOD'] == "POST"){

$first_name = filter_var($_POST['first_name'],FILTER_SANITIZE_STRING) ?? '';
$middle_name = filter_var($_POST['middle_name'],FILTER_SANITIZE_STRING) ?? '';
$last_name = filter_var($_POST['last_name'],FILTER_SANITIZE_STRING) ?? '';

$month = filter_var($_POST['month'],FILTER_SANITIZE_NUMBER_INT) ?? '';
$day = filter_var($_POST['day'],FILTER_SANITIZE_NUMBER_INT) ?? '';
$year = filter_var($_POST['year'],FILTER_SANITIZE_NUMBER_INT) ?? '';

$email = filter_var($_POST['email'],FILTER_VALIDATE_EMAIL) ?? '';
$phone_number = filter_var($_POST['paymaya_account_number'],FILTER_SANITIZE_STRING) ?? '';
$sex = filter_var($_POST['sex'],FILTER_SANITIZE_STRING) ?? '';

$address = filter_var($_POST['address'],FILTER_SANITIZE_STRING) ?? '';
$province = filter_var($_POST['province'],FILTER_SANITIZE_STRING) ?? '';
$city = filter_var($_POST['city'],FILTER_SANITIZE_STRING) ?? '';
$country = 'PH';
$zip_code = filter_var($_POST['zip_code'],FILTER_SANITIZE_NUMBER_INT) ?? '';

$birthday = $year . "-" . $month . "-" . $day;

$field_of_interest = filter_var($_POST['field_of_interest'],FILTER_SANITIZE_STRING) ?? '';
$paymaya_account_number = filter_var($_POST['paymaya_account_number'],FILTER_SANITIZE_STRING) ?? '';
$TIN_number = filter_var($_POST['TIN_number'],FILTER_SANITIZE_STRING) ?? '';
$date_created = date('Y-m-d H:i:s');

$access = filter_var($_POST['access'],FILTER_SANITIZE_STRING) ?? '';
$username = filter_var($_POST['username'],FILTER_SANITIZE_STRING) ?? '';
$password = filter_var($_POST['password'],FILTER_SANITIZE_STRING) ?? '';
$password = password_hash($password,PASSWORD_DEFAULT) ?? '';

if(!file_exists("assets")){mkdir("upload"); }
if(!file_exists("assets/images")){mkdir("upload/images"); } 
if(!file_exists("assets/images/business_permit")){mkdir("upload/images/business_permit"); } 
if(!file_exists("assets/images/government_ID")){mkdir("upload/images/government_ID"); } 
if(!file_exists("assets/images/selfie")){mkdir("upload/images/selfie"); } 
if(!file_exists("assets/images/certifications")){mkdir("upload/images/certifications"); } 

if(isset($_FILES['business_permit']['tmp-name'])) { $tmpFilePath = $_FILES['business_permit']['tmp-name']; }

if(isset($tmpFilePath) && is_uploaded_file($tmpFilePath)) {

  $business_permit_filename = $_FILES['business_permit']['name'];

  $business_permit_newname = $_SERVER['DOCUMENT_ROOT'].'/assets/images/business-permit/'.$filename;

 if (!file_exists($business_permit_newname)) {
     
     move_uploaded_file($_FILES['business_permit']['tmp_name'],$business_permit_newname);
    }
    else {  
        echo "<script type='text/javascript'>
        alert('Account already exists!');
        document.location.href = 'index.html';
        </script>";
        }
}

if(isset($_FILES['government_ID_picture']['tmp-name'])) { $tmpFilePath = $_FILES['government_ID_picture']['tmp-name']; }

if(isset($tmpFilePath) && is_uploaded_file($tmpFilePath)) {

     $government_ID_picture_filename = basename($_FILES['government_ID_picture']['name']);
     
         $government_ID_picture_newname = "./assets/images/government_ID/".$government_ID_picture_filename;
    
    if (!file_exists($government_ID_picture_newname)) {
        
        move_uploaded_file($_FILES['government_ID_picture']['tmp_name'],$government_ID_picture_newname);
       }
       else {  
           echo "<script type='text/javascript'>
           alert('File already exists!');
           document.location.href = 'index.html';
           </script>";
           }
   }

if(isset($_FILES['selfie_with_government_ID']['tmp-name'])) { $tmpFilePath = $_FILES['selfie_with_government_ID']['tmp-name']; }

if(isset($tmpFilePath) && is_uploaded_file($_FILES['selfie_with_government_ID']['tmp-name'])) {

    $selfie_with_government_ID_filename = basename($_FILES['selfie_with_government_ID']['name']);
    
        $selfie_with_government_ID_newname = "./assets/images/selfie/" .$selfie_with_government_ID_filename;

if (!file_exists($selfie_with_government_ID_newname)) {
    
    move_uploaded_file($_FILES['selfie_with_government_ID']['tmp_name'],$selfie_with_government_ID_newname);
    }
    else {  
        echo "<script type='text/javascript'>
        alert('File already exists!');
        document.location.href = 'index.html';
        </script>";
        }
}

define("TOTAL_CERTIFICATIONS", count($_FILES['certifications']['name']));

// Loop through each file
for( $i=0 ; $i < TOTAL_CERTIFICATIONS ; $i++ ) {

  //Get the temp file path
  $tmpFilePath = $_FILES['certifications']['tmp_name'][$i];

  //Make sure we have a file path
  if (is_uploaded_file($tmpFilePath)){
    //Setup our new file path
    $newFilePath = "./assets/images/certifications/" . $_FILES['certifications']['name'][$i];

    //Upload the file into the temp dir
    if(move_uploaded_file($tmpFilePath, $newFilePath)) {
        
    }
  }
}

$query_stmt = mysqli_stmt_init($connection);

$query_stmt_2 = mysqli_stmt_init($connection);

$sql = 'INSERT INTO account_info'; 
$sql .= '(field1, field2, field3, field4, field5, field6, field7, field8,';
$sql .= 'field9, field10, field11, field12, field13, field14, field15, field16, field17, field18)';
$sql .= 'VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
$sql2 = 'INSERT INTO accounts (username, password, access, date_created) VALUES (?,?,?,?)';

if(mysqli_stmt_prepare($query_stmt, $sql) && mysqli_stmt_prepare($query_stmt_2, $sql2)){
    
    if(!mysqli_stmt_bind_param($query_stmt,'sssssssssssssiissi',$first_name,$middle_name,$last_name,$email,$phone_number, $sex, $birthday, $address, $address, $province, $city, $country, $field_of_interest,$paymaya_account_number,$TIN_number, $username, $country, $zip_code)){
        echo "Binding parameters failed: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_execute($query_stmt)){
        echo "Statment execution failed 1: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_bind_param($query_stmt_2,'ssss',$username,$password,$access, $date_created)){
        echo "Binding parameters failed: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_execute($query_stmt_2)){
        echo "Statment execution failed 2: ".mysqli_stmt_error($query_stmt); exit;
    }
    
    echo "<script type='text/javascript'> 
        alert('A new document is added successfully');
        document.location.href = 'index.html';
        </script>";
    }

    else{
        echo "<script type='text/javascript'> 
        alert('Preparation failed!');
        </script>";
    }
      
    if(!mysqli_stmt_close($query_stmt)) { echo "Statment execution failed: ".mysqli_stmt_error($query_stmt); }
    if(!mysqli_stmt_close($query_stmt_2)) { echo "Statment execution failed: ".mysqli_stmt_error($query_stmt); }
		
}
else{
    header("HTTP/1.1 403 Origin Denied");
}
// close the mysql connection after use
mysqli_close($connection);  
exit;   