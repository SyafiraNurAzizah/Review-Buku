<?php

session_start();

if( !isset($_SESSION["login"]) ) {
  echo "<script> alert('Anda harus login terlebih dahulu.')</script>";
  header("Location: login.php");
  exit;
}

$conn = mysqli_connect("localhost", "root", "", "website");

if (isset($_POST["submit"])) {
    $uname = $_POST["username"];
    $date = $_POST["date"];
    $reviews = $_POST["reviews"];

    $query = "INSERT INTO review VALUES 
    ('', '$uname', '$date', '$reviews')";

    mysqli_query($conn, $query);

    header("Location: utama.php");
    exit;

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
body{
    font-family:sans-serif;
    background-color: #f3eed5;
}
label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #694610;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #694610;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
  padding-left: 250px;
}

input[type=text]:focus {
  border: 1px solid #694610;
}


textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 1px solid #694610;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}
button {
  background-color: #3f2909;
  color: white;
  padding: 12px 20px;
  margin: 20px -120px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  margin-right: 0px;
  text-decoration: none;
}
.container {
  overflow: hidden;
  border-radius: 10px;
  background-color: #faf8ef;
  padding: 50px 100px;
  margin: 50px 150px;
  margin-left: 370px;
  width: 450px;
  height: 400px;
  box-shadow: 0 4px 8px rgb(48, 34, 15);
  padding-left: 50px;
}

.cancel {
  background-color: rgb(175, 48, 48);
  color: white;
  padding: 12px 20px;
  margin: 20px -120px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: left;
  margin-left: 0px;
  text-decoration: none;
}
.cancel:hover {
    opacity: 80%
}
button:hover {
    opacity: 80%
}

    </style>
</head>
<body>
    <div class="container">
    <form action="" method="post">
        <table>
            <tr>
                <td><label for="username">Username:</label></td>
                <td><input type="text" name="username" value="" id="username" required></td>
            </tr>
            <tr>
                <td><label for="date">Date:</label></td>
                <td><input type="date" name="date" value="" id="date" required></td>
            </tr>
            <tr>
                <td><label for="reviews">Reviews:</label></td>
                <td><textarea id="reviews" name="reviews" placeholder="Write something.." style="height:200px" required></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="left">
                    <a href="utama.php"class="cancel">Cancel</a>
                </td>
                <td colspan="2" align="right">
                    <button type="submit" name="submit">Tambah Data</button>
                </td>
            </tr>
        </table>
</form>
</div>
</body>
</html>