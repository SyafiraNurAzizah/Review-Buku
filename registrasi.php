<?php

require 'functions.php';

if( isset($_POST["submit"])) {

  if( registrasi($_POST) > 0 ) {
    echo "<script>
            alert('User berhasil ditambahkan!');
        </script>";
    header("Location: login.php");
    exit;
  } else {
    echo mysqli_error($conn);
  }
}
?>




<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
  

  <style>
    body {
    overflow: hidden;
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f3eed5;
    margin: 0;
    padding: 0;
    
  }
  
  a {
    color: white;
    text-decoration: none;
  }
  a:hover {
    color: #ffaa2c;
  }
  .cancel:hover {
    color: white;
  }
  .password {
    font-size: 15px;
    padding-top: 35px;
  }
  .pass {
    font-size: 15px;
    color: rgb(72, 73, 151);
    bottom: 0;
  }
  .pass:hover {
    color: rgb(175, 48, 48);
  }
  header {
      background-color: #523b1a;
      color: white;
  }
  
    button {
      border-radius: 16px;
      color:#462e0b;
      background-color: #8f6b3c;
      border: #462e0b;
    }
    span {
      padding:  0em 1em;
      border-radius: 18px;
      font-size: 14px;
      line-height: 2;
      color: #51350C;
    }
    
    span.ex1 { 
      -webkit-box-decoration-break: clone;
      -o-box-decoration-break: clone;
      box-decoration-break: clone;
      border-radius: 16px;
    }
    span.ex2 { 
      -o-box-decoration-break: clone;
      box-decoration-break: clone;
    }
  
      * {box-sizing: border-box;}
  body {font-family: Verdana, sans-serif;}
  .mySlides {display: none;}
  img {vertical-align: middle;}
  
  /* Full-width input fields */
  input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #694610;
    box-sizing: border-box;
  }
  
  /* Set a style for all buttons */
  button {
    background-color: #3f2909;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    font-size: 15px;
  }
  
  button:hover {
    opacity: 0.8;
  }

  /* Extra styles for the cancel button */
  .cancelbtn {
    width: auto;
    padding: 13px 25px;
    background-color: rgb(175, 48, 48);
    font-size: 15px;
    border-radius: 20px;
  }
  
  /* Center the image and position the close button */
  .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
  }
  
  h2 {
    text-align: center;
    color: #694713;
    font-family: Arial, Helvetica, sans-serif;
  }
  
  .container {
    font-family: Arial, Helvetica, sans-serif;
    padding: 16px;
    color: #51350C;
    padding-top: 5px;
  }
  span.password {
    float: right;
  }
  
  span.psw {
    float: right;
    padding-top: 10px;
  }
  
  /* The Modal (background) */
  .modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    padding-top: 60px;
  }
  
  /* Modal Content/Box */
  .modal-content {
    border-radius: 40px;
    background-color: #faf8ef;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    width: 550px; /* Could be more or less, depending on screen size */
    height: 485px;
    box-shadow: 0 4px 8px rgb(48, 34, 15);
    padding-top: 15px;
  }

  
  
  
  /* Add Zoom Animation */
  .animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
  }
  
  @-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
  }
    
  @keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
  }
  
  /* Change styles for span and cancel button on extra small screens */
  @media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
    button {
    background-color: #04AA6D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
  }
  }
  </style>


</head>
<title>Login</title>

</head>
<body>



  
<form class="modal-content animate" action="" method="post" id="myForm">
    <h2>WELCOME!</h2>

    <div class="container">
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" id="username" required>

      <label for="password"><b>Password</b></label>
      <input type="password" name="password" id="password" placeholder="Enter Password" required>
      
      <label for="password2"><b>Konfirmasi Password</b></label>
      <input type="password" name="password2" id="password2" placeholder="Enter Password" required>

      <button type="submit" name="submit">Create Account</button>

      <span class="password">Already have an account? <a href="login.php" class="pass"><b>Login</b></a></span>
    </div>

    <div class="container">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><a href="utama.php" class="cancel">Cancel</a></button>
    </div>
    
  </form>


<script>

function hapusData() {
            // Dapatkan elemen-elemen formulir berdasarkan ID
            var form = document.getElementById("myForm");

            // Reset formulir untuk menghapus semua data yang telah dimasukkan
            form.reset();
        }

const togglePassword = document.querySelector('#password');
const password = document.querySelector('#id_password');

password.addEventListener('click', function (e) {
  // toggle the type attribute
  const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
  password.setAttribute('type', type);
  // toggle the eye slash icon
  this.classList.toggle('fa-eye-slash');
});

</script>

</body>
</html>