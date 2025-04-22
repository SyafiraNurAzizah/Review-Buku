<?php

session_start();
    //koneksi ke database
    $conn = mysqli_connect("localhost", "root", "", "website");

    $search = mysqli_query($conn, "SELECT * FROM books");

    //ambil data dari tabel
    $result = mysqli_query($conn, "SELECT * FROM book_reviews LIMIT 3");

    if (isset($_GET['cari'])) {
      session_destroy();
    }
?>


<!DOCTYPE html>
<html>
  <head>
    <title>Tampilan Utama</title>
    <link rel="stylesheet" type="text/css" href="home.css">

    <style>
      body {
        background-color: #F3EED5;
        margin: 0;
        padding: 0;
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
      .home {
        color: #ffaa2c;
        text-decoration: underline;
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

      /*----------------------------- MOST POPULAR THIS WEEK ------------------------------- */
      h2 {
        color: #462e0b;
        margin: 10x;
        font-family: 'Athena';
        font-size: 35px;
        margin-bottom: 50px;
        margin-left: 23px;
      }
      .bagianbuku {
        display: grid;
        grid-template-columns: repeat(3, 1fr); /* Membuat 3 kolom dengan lebar yang sama */
        gap: 20px; /* Jarak antara kartu-kartu */
        justify-content: space-around;
        margin: 20px;
        margin-bottom: 75px;
        padding-left: 70px;
      }
      .title {
        width: 250px; /* Lebar card sesuai kebutuhan Anda */
        height: 380px; /* Tinggi card sesuai kebutuhan Anda */
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
      .title h3 {
        font-size: 17.5px;
        align: center;
        color: #462e0b;
        padding-top: 5px;
      }
      .title .pengarang {
        font-size: 12.5px;
        display: block;
      }
      .title img {
        width: 130px;
        height: 200px;
        border-radius: 3px;
      }
      /* ----------------------------------------------------------------------------------- */

      * {box-sizing: border-box;}
      body {font-family: Verdana, sans-serif;}
      .mySlides {display: none;}
      img {vertical-align: middle;}

      /* Slideshow container */
      .slideshow-container {
        max-width: 1000px;
        position: relative;
        margin-top: 75px;
        padding-left: 230px;
      }

      .slideshow-container img {
        width: 900px;
        height: 500px;
      }

      /* Fading animation */
      .fade {
        animation-name: fade;
        animation-duration: 1s;
      }

      @keyframes fade {
        from {opacity: .4} 
        to {opacity: 1}
      }
      style {
          display: none;
      }

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
      /* .ig {
        color: #f1f1f1;
        float: left;
      } */
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
    
    <br>
    <br>

    <div class="slideshow-container" align="center">
      <div class="mySlides fade">
        <img src="images/Heading1.png" width="770" height="410">
      </div>
      <div class="mySlides fade">
        <img src="images/Heading2.png" width="770" height="410">
      </div>
      <div class="mySlides fade">
        <img src="images/Heading3.png" width="770" height="410">
      </div>
    </div>

    
            
    <br>
            
    <div style="text-align:center; padding-bottom: 0%;">
      <span class="dot"></span> 
      <span class="dot"></span> 
      <span class="dot"></span> 
    </div>

    <div class="popular">
      <h2>Most Populer This Week</h2>
      <div class="bagianbuku">
        <?php if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result))
        { ?>
        <div id="slider">
          <div class="title">
            <p class="pengarang"><b><?= $row["author"]; ?></b></p>
            <img src="images/<?= $row['cover']?>">
            <a href="reviewPage_isbn.php?id=<?= $row['id'] ?>"><h3 class="judul"><b><?= $row["title"]; ?></b></h3></a>
          </div>
        </div>
        <?php } 
        } ?>
      </div>
    </div>

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
    


    <script>
      let slideIndex = 0;
      showSlides();

      function showSlides() {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}    
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";  
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 5000); // Change image every 2 seconds
      }

    </script>
  </body>
</html>