<?php


//for recaptcha
header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');

$results = [];
$visitor_name = '';
$visitor_email = '';
$visitor_message = '';

//to show the name
if (isset($_POST['firstname'])) {
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);

}
//for drop down
if(isset($_POST['Drop_Down_Menu'])) {

    $Drop_Down_Menu = filter_var($_POST['Drop_Down_Menu'],
    FILTER_SANITIZE_STRING );

    $email_body .= "<div>
    <label>
    <b>Drop_Down_Menu:</b>
    </label>&nbsp;
    <span>".$Drop_Down_Menu."</span>
    </div>";

}
//if you click on this email it should should you you the recipet related to this email

if($Drop_Down_Menu == "ABC") {
        $email_recipient = "ABC@gmail.com";
}



if($Drop_Down_Menu == "DEF") {
        $email_recipient = "DEF@gmail.com";
}

if($Drop_Down_Menu == "GHI") {
    $email_recipient = "GHI@gmail.com";
}


if($Drop_Down_Menu == "JKL") {
    $email_recipient = "JKL@gmail.com";
}

//dropDown ends here


//last name

if (isset($_POST['lastname'])) {
    $visitor_name .= ' '.filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
    
}

//email

if (isset($_POST['email'])) {
    $visitor_email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    
}

//tell us you thoughts
if (isset($_POST['message'])) {
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
    
}

// if (isset($_POST['visitor'])) {
//     $visitor_message = filter_var(htmlspecialchars($_POST['visitor']), FILTER_SANITIZE_STRING);
    
// }

// if($visitor =="security") {
//     $mail_to = 'your security email';
// }

// elseif ($visitor == "it") {
//     $mail_to = 'your it email';
// }

// else (
//     $visitor == "transport") {
//         $mail_to = 'your transport email'
//     };





$results['name'] = $visitor_name;
$results['message'] = $visitor_message;


//setting up the subject and print the email to visitor
$email_subject = 'Sabnit';
$email_recipient = 'Sabnitk@gmail.com'; 
$email_message = sprintf('Name: %s, Email: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

$email_headers = array(



    'From' => 'sabnit@gmail.com',
    'Reply-To'=>$visitor_email,
);
//to send thanks email

$email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);
if ($email_result) {
    $results['message'] = sprintf('Thank you for contacting us, %s. You will get a reply within 34 hours.', $visitor_name);
} else {
    $results['message'] = sprintf('we are sorry but the email did not go through.');

}



// if (empty($visitor_name)  || empty($visitor_email) || empty($visitor_message)) {
//     header("Location: ../index.php?signup=empty");
//     exit();

// } 
// else {

//     //check if input characters are valid
//     if (!preg_match("/^[a-zA-Z]*$visitor_name") ||
//     !preg_match("/^[a-zA-Z]*$visitor_message")) {
//         header("Location: ../index.php?signup=empty");
//         exit();

//     } else {
//         //check if email is valid
//         if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
//             header("Location: ../index.php?signup=email");
//             exit();

//         } else {
//             header("Location: ../index.php?signup=success");
//             exit();
//         }
        
//     }

//} 

// else {
//     header("location: ../index.html");
//     exit();
// }


echo json_encode($results);

