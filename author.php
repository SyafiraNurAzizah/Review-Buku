<?php
session_start();

$conn = mysqli_connect('localhost','root','','website');

$search = mysqli_query($conn, "SELECT * FROM books");

    if (isset($_GET['cari'])) {
      session_destroy();
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>AUTHOR</title>
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
      .author {
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

  
  * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


.tombol-tambah {
  /* tombol tambah */
    font-size: 25px;
    width: 40px;
    height: 40px;
    float: right;
    margin-right: 18px;
    margin-bottom: 40px;
    cursor: pointer;
    background-color: #462e0b;
    color: white;
    border-radius: 5px;
    transition: background-color 0.3s;

}

.tombol-tambah:hover {
    background-color: #b19437;
}



a {
  /* link  */
    text-decoration: none;
    color: white;
}
a:hover {
  /* ketika cursor diarahkan ke nav */
  color: #ffaa2c;
}
.author {
  /* nav author */
  color: #ffaa2c;
  text-decoration: underline;
}

.slider-buku {
            width: 80%;
            margin: auto;
            overflow: hidden;
            position: relative;
        }

        .slides {
            display: flex;
            padding-left: 50px;
            padding-right: 100px;
            transition: transform 0.5s ease-in-out;
        }

        .slide {
            min-width: 10%;
            box-sizing: border-box;
            margin-left: 40px;
        }

        img {
            width: 150px;
            height: 210px;
        }

        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 20px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
            background-color: rgba(0, 0, 0, 0.5);
        }
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        .tere {
            padding-top: 150px;
            margin-left: 120px;
            color: #462e0b;
        }
        /* ------------------------------- FOOTER ----------------------------------- */
      .footer {
        background-color: #523b1a;
        height: 100px;
        margin-top: 154px;
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
      <li><a href="author.php" class="author">Author</a></li>
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
    <h1 class="tere">TERE LIYE</h1>
    <br>
   

<div class="slider-buku">
  <div class="slides">
      <div class="slide">
          <img src="images/bumi.jpg" alt="Slide 1">
      </div>
      <div class="slide">
          <img src="images/bulan.jpg" alt="Slide 2">
      </div>
      <div class="slide">
          <img src="images/matahari.jpg" alt="Slide 3">
      </div>
      <div class="slide">
          <img src="images/bintang.jpg" alt="Slide 4">
      </div>
      <div class="slide">
          <img src="images/ceros dan batozar.jpg" alt="Slide 5">
      </div>
      <div class="slide">
          <img src="images/komet.jpg" alt="Slide 6">
      </div>
      <div class="slide">
          <img src="images/komet minor.jpg" alt="Slide 7">
      </div>
      <div class="slide">
          <img src="images/selena.jpg" alt="Slide 8">
      </div>
      <div class="slide">
          <img src="images/nebula.jpg" alt="Slide 9">
      </div>
      <div class="slide">
          <img src="images/si putih.jpg" alt="Slide 10">
      </div>
  </div>
  <div class="prev" onclick="plusSlides(-1)"><</div>
  <div class="next" onclick="plusSlides(1)"> ></div>
</div>
<br><br><br><br>

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
  let slideIndex = 1;

  function plusSlides(n) {
      showSlides(slideIndex += n);
  }

  function showSlides(n) {
      let i;
      const slides = document.getElementsByClassName("slide");

      if (n > slides.length) {
          slideIndex = 1;
      }

      if (n < 1) {
          slideIndex = slides.length;
      }

      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
      }

      for (i = slideIndex - 1; i < slideIndex + 4; i++) {
          if (i >= slides.length) {
              slides[i - slides.length].style.display = "block";
          } else {
              slides[i].style.display = "block";
          }
      }
  }

  // Show the first slides initially
  showSlides(slideIndex);
</script>


</body>
</html><header>
   