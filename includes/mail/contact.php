<?php
    //for captacha
    if(isset($_POST['submit-wrapper'])){
        //print_r($_POST);
        $url = "https://www.google.com/recaptcha/api/siteverify";
        $data = [
            //secreat link of recptcha v3
            'secret' => "6Lf5yfIZAAAAAMIicBx4mkQqqOLdDXSX2irkctFf",
            //to make it work
            'response' => $_POST['token'],
            'remoteip' =>$_SERVER['REMOTE_ADDR']
        ];

        //header to show data on top
        $options = array(
            'http' => array(
                'header' => "Content-type: application/x-www-form-urlencoded\r\n",
                'method' => 'POST',
                'content' => http_build_query($data)

            )
            );

            $context = stream_context_create($options);
            $response = file_get_contents($url, false, $context);

        $res =json_decode($response, true);
        //after submitting it should say data save
        if($res['success'] == true) {
            echo '<div class= "alert alert-success">
                <strong>Success!</strong> Data is saved.
                </div>';

        } else {

            //after submitting it should say data failed to save
            echo '<div class= "alert alert-warning">
                <strong>Success!</strong> failed to save data.
                </div>';
        }
    }

    // define('SITE_KEY','6LfD5PEZAAAAAIj7II4c7e_LPp3-9iXqoRBeyrvJ');
    // define('SECRET_KEY','6LfD5PEZAAAAAH5gyNZnXy_WSl8GozqWHh2goG4J');
?>

<!-- site key to connect it -->
<script src="https://www.google.com/recaptcha/api.js?render=6Lf5yfIZAAAAAGwMG8DiiAy9qDgUB4H0fnABeu0w"></script>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reCaptcha</title>
    <script src="https://www.google.com/recaptcha/api.js?render=6Lf5yfIZAAAAAGwMG8DiiAy9qDgUB4H0fnABeu0w<?php echo SITE_KEY; ?>"></script>
</head>
<body>
     

  <?php
    $fullUrl = "http://$SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    //if you didn't click anywhere it should say empty

    if (strops($fullUrl, "signup=empty") == true) {
        echo "<p class='error'>You did not fill in all fields!</p>";
        exit();
    }

    //for email space have to fill something
    if (strops($fullUrl, "signup=email") == true) {
        echo "<p class='error'>You did not fill in all fields!</p>";
        exit();
    }
    //if you didn't fill any of the column
    if (strops($fullUrl, "signup=success") == true) {
        echo "<p class='error'>You did not fill in all fields!</p>";
        exit();
    }

  
  ?>
    
</body>


<script>
      function onClick(e) {
          //to make it exaecute!
        e.preventDefault();
        grecaptcha.ready(function() {
          grecaptcha.execute('6Lf5yfIZAAAAAGwMG8DiiAy9qDgUB4H0fnABeu0w', {action: 'submit'}).then(function(token) {
              // Add your logic to submit to your backend server here.
              console.log(token);
              document.getElementById("token").value = token;
          });
        });
      }
  </script>

</html>