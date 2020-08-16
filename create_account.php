<?php

$connection = mysqli_connect('localhost','root','','lockdown-storage');
if(mysqli_connect_errno()){
    printf("Connect error: %s \n",mysqli_connect_error());
}

// Security purposes
if($_SERVER['REQUEST_METHOD'] == "POST"){

// text fields 
$first_name = filter_var($_POST['first_name'],FILTER_VALIDATE_STRING) ?? '';
$middle_name = filter_var($_POST['middle_name'],FILTER_VALIDATE_STRING) ?? '';
$last_name = filter_var($_POST['last_name'],FILTER_VALIDATE_STRING) ?? '';
$email = filter_var($_POST['email'],FILTER_VALIDATE_EMAIL) ?? '';
$phone_number = filter_var($_POST['phone_number'],FILTER_VALIDATE_STRING) ?? '';
$address = filter_var($_POST['address'],FILTER_VALIDATE_STRING) ?? '';
$province = filter_var($_POST['province'],FILTER_VALIDATE_STRING) ?? '';
$city = filter_var($_POST['city'],FILTER_VALIDATE_STRING) ?? '';
$country = "PH";
$field_of_interest = filter_var($_POST['field_of_interest'],FILTER_VALIDATE_STRING) ?? '';
$paymaya_account_number = filter_var($_POST['paymaya_account_number'],FILTER_VALIDATE_STRING) ?? '';
$TIN_number = filter_var($_POST['TIN_number'],FILTER_VALIDATE_STRING) ?? '';

$access = filter_var($_POST['access'],FILTER_VALIDATE_STRING) ?? '';
$username = filter_var($_POST['username'],FILTER_VALIDATE_STRING) ?? '';
$password = filter_var($_POST['password'],FILTER_VALIDATE_STRING) ?? '';
$password = password_hash($password,PASSWORD_DEFAULT) ?? '';

// make new directories if there's no existing one
if(!file_exists("assets")){mkdir("upload"); }
if(!file_exists("assets/images")){mkdir("upload/images"); } 
if(!file_exists("assets/images/business_permit")){mkdir("upload/images/business_permit"); } 
if(!file_exists("assets/images/government_ID")){mkdir("upload/images/government_ID"); } 
if(!file_exists("assets/images/selfie")){mkdir("upload/images/selfie"); } 
if(!file_exists("assets/images/certifications")){mkdir("upload/images/certifications"); } 

//Сheck that we have a business permit file (preferrably in picture)
if(is_uploaded_file($_FILES['business_permit']['tmp-name'])) {

 //Check if the file is rar folder 
  $business_permit_filename = basename($_FILES['business_permit']['name']);
    //Determine the path to which we want to save this file
      $business_permit_newname = dirname(__FILE__).'/'.$filename;
 //Check if the file with the same name is already exists on the server
 if (!file_exists($business_permit_newname)) {
//-------------------------
     
     move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$business_permit_newname);
    }
    else {  // display popup when account already exists from the upload directory
        echo "<script type='text/javascript'>
        alert('Account already exists!');
        document.location.href = 'index.html';
        </script>";
        }
}
//Сheck that we have a business permit file (preferrably in picture)
if(is_uploaded_file($_FILES['business_permit']['tmp-name'])) {

    //Check if the file is rar folder 
     $business_permit_filename = basename($_FILES['business_permit']['name']);
       //Determine the path to which we want to save this file
         $business_permit_newname = dirname(__FILE__).'/assets/images/business_permit/'.$business_permit_filename;
    //Check if the file with the same name is already exists on the server
    if (!file_exists($business_permit_newname)) {
   //-------------------------
        
        move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$business_permit_newname);
       }
       else {  // display popup when account already exists from the upload directory
           echo "<script type='text/javascript'>
           alert('File already exists!');
           document.location.href = 'index.html';
           </script>";
           }
   }
//Сheck that we have a government ID file (preferrably in picture)
if(is_uploaded_file($_FILES['government_ID_picture']['tmp-name'])) {

    //Check if the file is rar folder 
     $government_ID_picture_filename = basename($_FILES['government_ID_picture']['name']);
       //Determine the path to which we want to save this file
         $government_ID_picture_newname = dirname(__FILE__).'/'.$government_ID_picture_filename;
    //Check if the file with the same name is already exists on the server
    if (!file_exists($government_ID_picture_newname)) {
   //-------------------------
        
        move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$government_ID_picture_newname);
       }
       else {  // display popup when account already exists from the upload directory
           echo "<script type='text/javascript'>
           alert('File already exists!');
           document.location.href = 'index.html';
           </script>";
           }
   }

if(is_uploaded_file($_FILES['selfie_with_government_ID']['tmp-name'])) {

//Check if the file is rar folder 
    $selfie_with_government_ID_filename = basename($_FILES['selfie_with_government_ID']['name']);
    //Determine the path to which we want to save this file
        $selfie_with_government_ID_newname = dirname(__FILE__).'/'.$selfie_with_government_ID_filename;

//Check if the file with the same name is already exists on the server
if (!file_exists($selfie_with_government_ID_newname)) {
//-------------------------
    
    move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$selfie_with_government_ID_newname);
    }
    else {  // display popup when account already exists from the upload directory
        echo "<script type='text/javascript'>
        alert('File already exists!');
        document.location.href = 'index.html';
        </script>";
        }
}

$total = count($_FILES['certifications']['name']);

// Loop through each file
for( $i=0 ; $i < $total ; $i++ ) {

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

$sql = 'INSERT INTO accounts_info (field1, field2, field3, field4, field5, field6, field7, field8, field9, field10, field11, field12, field13) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)';

$sql2 = 'INSERT INTO accounts (username, password, access) VALUES (?,?,?)';

if(mysqli_stmt_prepare($query_stmt, $sql) && mysqli_stmt_prepare($query_stmt, $sql2)){
    
    if(!mysqli_stmt_bind_param($query_stmt,'sssssssssssss',$first_name,$middle_name,$last_name,$email,$phone_number,$address,$province, $city, $country, $field_of_interest,$paymaya_account_number,$TIN_number, $username)){
        echo "Binding parameters failed: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_execute($query_stmt)){
        echo "Statment execution failed: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_bind_param($query_stmt_2,'sss',$username,$password,$access)){
        echo "Binding parameters failed: ".mysqli_stmt_error($query_stmt); exit;
    }

    if(!mysqli_stmt_execute($query_stmt_2)){
        echo "Statment execution failed: ".mysqli_stmt_error($query_stmt); exit;
    }
    
    echo "<script type='text/javascript'> 
        alert('A new document is added successfully');
        document.location.href = 'register.php';
        </script>";
    }

    else{
        echo "<script type='text/javascript'> 
        alert('Preparation failed!');
        document.location.href = 'register.php';
        </script>";
    }
      
mysqli_stmt_close($query_stmt);
		
}
else{
    header("HTTP/1.1 403 Origin Denied");
}
// close the mysql connection after use
mysqli_close($con);  
exit;   