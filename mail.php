<?php

//Taking all values
$fname 		= $_POST['fname'];
$email 		= $_POST['email'];
$subject 	= $_POST['subject'];
$msg 		= $_POST['msg'];
$output 	= "Name: ".$fname."\n\nSubject: ".$subject."\n\nMessage: ".$msg;

$to 		= 'support@irs-soft.com';
$headers	= 'FROM: "'.$email.'"';

$send = mail($to, $fname, $output."\n\n***This message has been sent from Blog_master", $headers);