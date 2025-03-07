<?php
session_start();

$conn = mysqli_connect('localhost','root','','website');
$result = mysqli_query($conn,'SELECT * FROM horor');

$search = mysqli_query($conn, "SELECT * FROM books");

    if (isset($_GET['cari'])) {
      session_destroy();
    }

?>
<!DOCTYPE html>
<html>
<head>
    <title>Genre Romance</title>
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
 /* ------------------------------- FOOTER ----------------------------------- */
   .footer {
        background-color: #523b1a;
        height: 100px;
        width:auto;
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

/* The dots/bullets/indicators */
.dot {
  height: 25px;
  width: 25px;
  margin: 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: 0.5s ease;
}

.active {
  background-color: #717171;
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


a {
  color: white;
  text-decoration: none;
}
a:hover {
  color: #ffaa2c;
}
.genre {
  color: #ffaa2c;
  text-decoration: underline;
} 



/* bagian button macam genre */
.romance,
.horor,
.fantasi,
.fiksi,
.comedy,
.non-fiction,
.teen-fiction,
.sci-fiction {
  border-color: #000000;
  background-color: transparent;
  width: 115px;
  height: 55px;
  color: #503104;
  border-radius: 5px;
  margin-left: 45px;
  margin-bottom: 25px;
  margin-top:120px;
  font-size: 14px;
}
.romance:hover,
.horor:hover,
.fantasi:hover,
.fiksi:hover,
.comedy:hover,
.non-fiction:hover,
.teen-fiction:hover,
.sci-fiction:hover {
  background-color: #a3865b;
  border-color: #a3865b;
}
.horor{
  background-color: #462e0b;
  border-color: #462e0b;
  color: #ffaa2c;
  text-decoration: underline;
}


.bagian {
            display: flex;
            justify-content: space-around;
        }
.bagianbuku {
        display: grid;
            grid-template-columns: repeat(3, 1fr); /* Membuat 3 kolom dengan lebar yang sama */
            gap: 20px; /* Jarak antara kartu-kartu */
            justify-content: space-around;
            margin: 20px;
}
.card {
   
    flex: 0 1 calc(30.33% - 10px); 
    width: 340px;
    height: auto;
    border: 1px solid #ccc;
    padding: 20px;
    margin: 10px;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin-left: 35px;
}
.card img {
    width: 120px;
    height: auto;
    object-fit: cover;
    border-radius: 5px;
}
.card p {
    font-size: 14px;
}
.card:hover {
    background-color: #a3865b ;
}

.aliran {
        color: #523b1a;
        font-family: "Athena";
        font-size: 22.5px;
      }
      .aliran:hover {
        color: #f1f1f1;
      }
      .pengarang {
        color: #523b1a;
        font-family: "Athena";
        font-size: 20px;
      }
      .sinopsis {
        color: #523b1a;
        font-size: 20px;
      }

      
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
        <a href="romance.php"><button class="romance">ROMANCE</button></a>
        <a><button class="horor">HOROR</button></a>
        <a href="fiksi.php"><button class="fiksi">FIKSI</button></a>
        <a href="fantasi.php"><button class="fantasi">FANTASI</button></a>
        <a href="comedy.php"><button class="comedy">COMEDY</button></a>
        <a href="non-fiction.php"><button class="non-fiction">NON-FICTION</button></a>
        <a href="teen-fiction.php"><button class="teen-fiction">TEEN-FICTION</button></a>
        <a href="sci-fiction.php"><button class="sci-fiction">SCI-FICTION</button></a>
      
             
<br>
<br>
<br>
<div class="bagianbuku">
        <?php if ($result->num_rows > 0) {
        while ($row = mysqli_fetch_assoc($result))
        { ?>
        <div class="card">
          <div class="title">
            <img src="images/<?= $row['FOTO']?>">
            <a href="reviewPage_horor.php?id=<?= $row['id'] ?>" class="aliran"><h2><?= $row["JUDUL"];?></h2></a>
            <h3 class="pengarang"><b><?= $row["AUTHOR"]; ?></b></h3>
            <p class="sinopsis"><b><?= $row["DESKRIPSI"]; ?></b></p>
          </div>
        </div>
        <?php } 
        } ?>
      </div><br><br><br>  
  
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