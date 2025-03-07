<?php
session_start();

if( !isset($_SESSION["login"]) ) {
  echo "<script> alert('Anda harus login terlebih dahulu.')</script>";
  header("Location: login.php");
  exit;
}

$conn = mysqli_connect("localhost", "root", "", "website");

if (isset($_POST["submit"])) {
    $cover = $_POST["cover"];
    $isbn = $_POST["isbn"];
    $title = $_POST["title"];
    $author = $_POST["author"];
    $penerbit = $_POST["penerbit"];
    $sinopsis = $_POST["sinopsis"];
    $bahasa = $_POST["bahasa"];
    $format = $_POST["format"];

    $query = "INSERT INTO book_reviews VALUES
    ('', '$cover', '$isbn', '$title', '$author', '$penerbit', '$sinopsis', '$bahasa', '$format')";

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
    font-family: Arial, sans-serif;
    background-color: #f3eed5;
}
h2 {
    text-align: center;
    }
label {
    padding: 12px 5px 12px 0;
    display: block;
    font-weight: bold;
}

form {
    margin-top: 20px;
}
.form-group {
    margin-bottom: 20px;
}

input[type=text] {
  width: 140%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #694610;
  border-radius: 3px;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=file] {
  width: 140%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #694610;
  border-radius: 3px;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=date] {
  width: 140%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 1px solid #694610;
  border-radius: 3px;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 1px solid #694610;
  border-radius: 3px;
}

textarea {
  width: 140%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 1px solid #694610;
  border-radius: 3px;
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
.container {
  border-radius: 10px;
  background-color: #faf8ef;
  padding: 40px 60px;
  margin: 70px 50px;
  margin-left: 310px;
  width: 600px;
  height: 100%;
  box-shadow: 0 4px 8px rgb(48, 34, 15);
}
    </style>
</head>
<body>
    <div class="container">
    <h2>Form Tambah Buku</h2>
    <form action="" method="post">
        <table>
            <tr>
                <td><label for="cover">Cover:</label></td>
                <td><input type="file" name="cover" value="" id="cover" accept="image/*" required></td>
            </tr>
            <tr>
                <td><label>Preview Cover Buku:</label></td>
                <td><img id="cover-preview" src="" alt="Preview" style="max-width: 150px; max-height: 200px;"></td>
            </tr>
            <tr>
                <td><label for="isbn">ISBN:</label></td>
                <td><input type="text" name="isbn" value="" id="isbn" required></td>
            </tr> 
            <tr>
                <td><label for="title">Title:</label></td>
                <td><input type="text" name="title" value="" id="title" required></td>
            </tr>
            <tr>
                <td><label for="author">Author:</label></td>
                <td><input type="text" name="author" value="" id="author" required></td>
            </tr>
            <tr>
                <td><label for="penerbit">Penerbit:</label></td>
                <td><input type="text" name="penerbit" value="" id="penerbit" required></td>
            </tr>
            <tr>
                <td><label for="sinopsis">Sinopsis:</label></td>
                <td><textarea type="text" name="sinopsis" value="" id="sinopsis" required></textarea></td>
            </tr>
            <tr>
                <td><label for="bahasa">Bahasa:</label></td>
                <td><input type="text" name="bahasa" value="" id="bahasa" required></td>
            </tr>
            <tr>
                <td><label for="format">Format:</label></td>
                <td><input type="text" name="format" value="" id="format" required></td>
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
<script>
        // Mengatur event listener untuk input file
        document.getElementById('cover').addEventListener('change', function() {
            const preview = document.getElementById('cover-preview');
            const file = this.files[0];

            if (file) {
                const reader = new FileReader();

                reader.onload = function(e) {
                    preview.src = e.target.result;
                }

                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        });
    </script>
</body>
</html>
