<?php

session_start();

//koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "website");

//ambil data dari tabel
$search = mysqli_query($conn, "SELECT * FROM books");

if (isset($_GET['cari'])) {
    $search = mysqli_query($conn, "SELECT * FROM books WHERE JUDUL LIKE '%".
    $_GET['cari']."%'");
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

body {
        background-color: #F3EED5;
        margin: 0;
        padding: 0;
        font-family: Verdana, sans-serif;
      }

      /* ----------------------------------- NAVBAR ---------------------------------------- */
      /* mengatur navbar */
      nav {
        position: fixed;
        top: 0;
        left: 0;
        display: flex;
        align-items: center;
        color: white;
        background-color: #523b1a;
        z-index: 1;
        width: 100%;
        height: 80px;
      }
      /* mengatur jarak judul agar tidak mepet kiri */
      .revbook {
        padding-left: 40px;
        font-size: 25px;
        font-family: 'Romanus';
      }
      .container {
        max-width: none;
        max-height: fit-content;
        display: flex;
        align-items: center;
        /* font-family: 'Roman SD'; */
      }
      ul{
      list-style-type: none;
      
      }
      /* mengatur menu */
      li {
        display: inline;
        color: white;
        margin-right: 35px;
        font-size: 20px;
        margin-left: 20px;
      }
      a {
        color: white;
        text-decoration: none;
      }
      /* mengubah warna menu ketika disentuh oleh kursor */
      a:hover {
        color: #ffaa2c;
      }
      .login:hover {
        color: #462e0b;
      }
      * {
        box-sizing: border-box;
      }
      /* mengatur box search */
      form.example input[type=text] {
        padding: 5px;
        margin-left: 70px;
        font-size: 20px;
        border: 1px solid #f1f1f1;
        float: left;
        width: 65%;
        background: #f1f1f1;
        border-radius: 7px;
        margin-top: 5px;
      }
      /* Style the submit button */
      form.example button {
        float: left;
        width: 10%;
        padding: 5px;
        background: #795c32;
        color: white;
        font-size: 20px;
        border: 1px solid #795c32;
        cursor: pointer;
        padding-left: 7px;
        margin-top: 5px;
        margin-left: 10px;
        padding-right: 20px;
      }
      form.example button:hover {
        background: #f1f1f1;
        color: #795c32;
        border-color: #f1f1f1;
      }
      /* Clear floats */
      form.example::after {
        content: "";
        clear: both;
        display: table;
      }
      button {
        border-radius: 25px;
        color:#462e0b;
        background-color: #8f6b3c;
        border: #462e0b; 
        margin-left: 20px;
      }
      span {
        padding:  0em 1em;
        border-radius: 18px;
        font-size: 20px;
        line-height: 2;
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
      /* ----------------------------------------------------------------------------------- */
      /*----------------------------- SEARCH ------------------------------- */
      .bagianbuku {
        margin: 20px;
        margin-top: 140px;
        padding-left: 50px;
        margin-bottom: 100px;
      }
      
      .title {
        width: 290px; /* Lebar card sesuai kebutuhan Anda */
        height: 450px; /* Tinggi card sesuai kebutuhan Anda */
        border-radius: 10px;
        margin: 20px;
        padding: 20px;
        text-align: center;
        color: #462e0b;
        box-shadow: 0 4px 8px #a3865b;
      }
      .title:hover {
        background-color: #a3865b;
        color: #f1f1f1;
      }
      .judulul {
        width: 500px;
        text-align: left;
        position: relative;
        bottom: 250px;
        font-size: 30px;
        color: #462e0b;
        font-family: 'Athena';
        left: 347.5px;
      }
      .pengarang {
        position: relative;
        left: 350px;
        bottom: 225px;
        text-align: left;
        color: #462e0b;
      }
      .title img {
        width: 240px;
        height: 355px;
        border-radius: 3px;
      }
      /* ----------------------------------------------------------------------------------- */

      /* ------------------------------- FOOTER ----------------------------------- */
      .footer {
        background-color: #523b1a;
        height: 100px;
      }
      .developer p {
        color: #f1f1f1;
        float: left;
      }
      .developer th {
        font-family: 'Athena';
      }
      /* -------------------------------------------------------------------------- */

      /* ------------------------  REVIEW ------------------------------------------*/
      .review {
        position: relative;
        float: right;
        padding-right: 25px;
        width: 50px;
        height: 50px;
        padding: 5px;
        margin-right: 50px;
        border-radius: 5px;
      }
      .moved-text {
        position: fixed;
        color: #f1f1f1;
        float: right;
        padding-right: 25px;
        width: 50px;
        height: 50px;
        padding: 5px;
        background: #523b1a;
        color: white;
        font-size: 20px;
        cursor: pointer;
        margin-top: 5px;
        top: 525px;
        margin-right: 50px;
        border-radius: 5px;
      }
      .plus {
        bottom: 30px;
        margin-left: 9px;
        font-size: 30px;
      }
      .review :hover {
        opacity: 80%;
      }
      /* ----------------------------------------------------------------------------*/

    </style>

</head>
<body>
<nav>

      <h3 class="revbook">REVIEW BUKU</h3>
      
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

      <!-- The form -->
      <form class="example" action="search.php" method="get">
        <input type="text" placeholder="Search.." name="cari">
        <button type="submit" for="cari"><i class="fa fa-search"></i></button>
      </form>

      <div class="container">
        <ul>
          <a>
            <li><a href="utama.php" class="home">Home</a></li>
            <li><a href="romance.php" class="genre">Genre</a></li>
            <li><a href="author.php">Author</a></li>
            <li><a href="region-local.php">Region</a></li>
          </a>
        </ul>
      </div id="id01" class="modal">

      <button>
      <?php
        if( !isset($_SESSION["login"]) ) { ?>
          <a href="registrasi.php" class="login">
            <span class="ex1">SIGN UP</span>
          </a>
        <?php } else { ?>
          <a href="logout.php" class="login">
            <span class="ex1">LOGOUT</span>
          </a>
        <?php } ?>
      </button>

    </nav>

    <?php if ($search->num_rows > 0) {
      while ($row = mysqli_fetch_assoc($search))
    { ?>
    <div class="popular">
      <div class="bagianbuku">
        <div id="slider">
          <div class="title">
            <img src="images/<?= $row['FOTO']?>">
            <a href="reviewPage_db.php?id=<?= $row['id'] ?>"><h1 class="judulul"><b><?= $row["JUDUL"]; ?></b></h1></a>
            <p class="pengarang"><b><?= $row["AUTHOR"]; ?></b></p>
          </div>
        </div>
      </div>
    </div>
    <?php } 
    } ?>
    
    <div class="review">
      <p class="moved-text"><a href="revbook.php" class="plus">+</a></p>
    </div>

<div class="footer" >

      <h3 class="revbook" style="float: right; padding-top: 15px; padding-right: 50px; color: #f1f1f1;">REVIEW BUKU</h3>

      <div class="developer">
      <table>
      
        <tr>
          <th> 
            <p style="font-size: 22.5px; padding-left: 25px; padding-top: 16px;"><b>Nayla</b></p>
            <p style="padding-left: 7.5px; padding-top: 30px;">Tri Anggita</p> 
          </th>
          <th>
            <p style="font-size: 22.5px; padding-left: 50px; padding-top: 16px;"><b>Syafira</b></p>
            <p style="padding-left: 7.5px; padding-top: 30px;">Nur Azizah</p>
          </th>
          <th>
            <p style="font-size: 22.5px; padding-left: 50px; padding-top: 16px;"><b>Winda</b></p>
            <p style="padding-left: 7.5px; padding-top: 30px;">Rahmadani</p>
          </th>
      
      </table>
      </div>

</div>

</body>
</html>