<?php 

$name = $_POST['inputName'];
$email = $_POST['inputEmail'];
$phone = $_POST['inputPhone'];
$message = $_POST['inputFeedback'];

$formcontent="From: $name \n Message: $message";
$recipient = "aitlaundry@gmail.com";
$subject = "Contact Form";
$mailheader = "From: $email \r\n";

mail($recipient, $subject, $formcontent, $mailheader) or die("Error!");
echo "Thank You!" . " -" . "<a href='index.html' style='text-decoration:none;color:#ff0099;'> Return Home</a>";

?>