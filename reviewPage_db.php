<?php

$conn = mysqli_connect("localhost", "root", "", "website");

$id = (isset($_GET['id']))?$_GET['id']:'';

$search = mysqli_query($conn, "SELECT * FROM books WHERE id='$id'");
$isi = mysqli_fetch_assoc($search);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Review</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            background-color: #f3eed5;
        }

        .container {
            max-width: 800px;
            width: 100%;
            overflow: hidden;
            background-color: #faf8ef;
            border-radius: 10px;
            box-shadow: 0 8px 16px #ccc;
            padding: 10px;
            margin: 40px;
        }

        .image-box {
            float: left;
            height: auto;
            width: 40%; /* Lebar gambar */
            margin: 15px;
            margin-right: 20px; /* Jarak antara gambar dan teks box */
            border-radius: 8px;
        }

        .image {
            width: 100%;
            height: auto;
            border-radius: 8px;
            padding-bottom: 50px;
        }

        .text-box {
            overflow: hidden; /* Menyembunyikan teks box dari float */
            margin: 10px;
        }

        .text-box div {
            padding: 5px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-bottom: 20px; /* Jarak antara text box pertama dan kedua */
        }

        h1 {
            color: #523b1a;
            font-family: "Athena";
            font-size: 40px;
        }

        h3 {
            color: #523b1a;
        }

        p {
            color: #523b1a;
        }

        .review {
            background-color: #523b1a;
            text-decoration: none;
            color: #f1f1f1;
            width: auto;
            padding: 13px 113px;
            border-radius: 5px;
        }
        .review :hover {
            color: #ffaa2c;
        }

        .cancel {
            background-color: rgb(175, 48, 48);
            text-decoration: none;
            color: #f1f1f1;
            width: auto;
            padding: 13px 129px;
            border-radius: 5px;
        }
        .cancel :hover {
            color: #ffaa2c;
        }

    </style>
</head>
<body>


<div class="container">

    <div class="image-box">
        <img class="image" name="cover" src="images/<?php echo $isi['FOTO']?>" alt="Gambar">
        <br>
        <a href="review.php" class="review"><span class="ex1">ADD REVIEW</span></a>
        <br>
        <br>
        <br>
        <br>
        <br>
        <a href="utama.php" class="cancel"><span class="ex1">CANCEL</span></a>
    </div>
    <h1 name="title"><u><?php echo $isi['JUDUL']?></u></h1>
    <div class="text-box">
        <div>
            <p name="sinopsis"><?php echo $isi['DESKRIPSI']?></p>
        </div>
        <div>
            <h3>Detail</h3>
            <hr>
            <table>
            <tr>
                <td><label for="title" type="text" name="title">Title:</label></td>
                <td><p for="title" type="text" name="title"><?php echo $isi['JUDUL']?></p></td>
            </tr>
            <tr>
                <td><label for="author" type="text" name="author">Author:</label></td>
                <td><p for="author" type="text" name="author"><?php echo $isi['AUTHOR']?></p></td>

            </tr>
        </table>
        </div>
    </div>



    <hr>
    <div class="text-box">
        <div>
        <h3 for="user" type="text" name="user" >User:</h3>
            <!-- <p>Kisah Cantik Itu Luka berlatar belakang pada masa penjajahan dan mengisahkan kehidupan kompleks tokoh utama Dewi Ayu, seorang perempuan cantik dan eksotis. Dewi Ayu adalah seorang pelacur dengan paras yang rupawan.
            Ia dibesarkan oleh kakek neneknya setelah ayah dan ibunya diusir karena pernikahan sedarah.</p> -->
        </div>
        <div>
        <h3 for="user" type="text" name="user" >User:</h3>
            <!-- <p>Kisah Cantik Itu Luka berlatar belakang pada masa penjajahan dan mengisahkan kehidupan kompleks tokoh utama Dewi Ayu, seorang perempuan cantik dan eksotis. Dewi Ayu adalah seorang pelacur dengan paras yang rupawan.
            Ia dibesarkan oleh kakek neneknya setelah ayah dan ibunya diusir karena pernikahan sedarah.</p> -->
        </div>
    </div>

    
</div>
</body>
</html>

