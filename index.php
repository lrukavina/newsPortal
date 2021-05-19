<?php
include 'connect.php';
define('UPLPATH', 'slike-clanci/');
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-control" content="no-cache">
<link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link href="animate.css" type="text/css" rel="stylesheet" />
<link href="style.css" type="text/css" rel="stylesheet" />
<title>Le Monde | Početna</title>
</head>

<body>
<?php
include_once("header.php");
?>
    <div class="header-razmak">

    </div>
    <article>
        <div class="wrapper">
            
            <div class="sekcije animated fadeIn">
                
                <div class="sekcije-razmak">
                    <hr class="sekcije-hr">
                </div>

                <div class="sekcija-kategorija">
                    <h2 class="animated fadeInUp">Sport</h2>
                    <br><br>
                    <center>
                    <div class="sekcija-kategorija-poredak">
                            <?php
                            $query = "SELECT * FROM novosti WHERE arhiva=0 AND kategorija='sport' ORDER BY id DESC LIMIT 2";
                            $result = mysqli_query($dbc, $query);
                            while($row = mysqli_fetch_array($result)){
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="55%" height="30%" alt="Slika ne postoji" />';
                                echo '<br><br>';
                                echo '<h3>';
                                echo $row['naslov'];
                                echo '</h3>';
                                echo '<br>';
                                echo '<p>';
                                $str = $row['sazetak'];
                                echo substr($str, 0, 150) . '...';
                                echo '</p>';
                                echo '<br>';
                                echo '<a href="citaj-clanak.php?id='.$row['id'].'"><button>Nastavi čitati</button></a>';
                            echo '</div>';
                            }
                            ?>
                    </div>
                    </center>
                </div>

                <div class="sekcije-razmak">
                    <hr class="sekcije-hr2">
                </div>

                <div class="sekcija-kategorija">
                    <h2 class="animated fadeInUp">Politika</h2>
                    <br><br>
                    <center>
                        <div class="sekcija-kategorija-poredak">
                            <?php
                            $query = "SELECT * FROM novosti WHERE arhiva=0 AND kategorija='politika' ORDER BY id DESC LIMIT 2";
                            $result = mysqli_query($dbc, $query);
                            while($row = mysqli_fetch_array($result)){
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="55%" height="30%" alt="Slika ne postoji" />';
                                echo '<br><br>';
                                echo '<h3>';
                                echo $row['naslov'];
                                echo '</h3>';
                                echo '<br>';
                                echo '<p>';
                                $str = $row['sazetak'];
                                echo substr($str, 0, 150) . '...';
                                echo '</p>';
                                echo '<br>';
                                echo '<a href="citaj-clanak.php?id='.$row['id'].'"><button>Nastavi čitati</button></a>';
                            echo '</div>';
                            }
                            ?>
                        </div>
                    <br>
                    </center>
                </div>
                <div class="sekcije-razmak">
                    <hr class="sekcije-hr">
                </div>
            </div>     
        </div>
    </article>
<div class="podnozje-razmak">

</div>
<footer>
    <center>
        <h4>Izrada:</h4>
        <h4>Luka Rukavina </h4>
        <p>lrukavina@tvz.hr</p>
    </center>
</footer>
</body>

</html>


