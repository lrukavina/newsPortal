<?php
include 'connect.php';
define('UPLPATH', 'slike-clanci/');
$kategorija = $_GET['id'];
$query = "SELECT * FROM novosti WHERE kategorija='$kategorija'";
$result = mysqli_query($dbc, $query) or die(mysqli_error($dbc));
$row = mysqli_fetch_array($result);
$print = $row['kategorija'];
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
<?php echo '<title>';
echo 'Le Monde | ';
echo $print;
echo '</title>'; ?>
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
                    <br><br>
                    <center>
                    <div class="sekcija-kategorija-poredak">
                            <?php
                            $query = "SELECT * FROM novosti WHERE arhiva=0 AND kategorija='$kategorija' ORDER BY id DESC";
                            $result = mysqli_query($dbc, $query);
                            $i=0;
                            while($row = mysqli_fetch_array($result)){
                            echo '<div class="kategorija-clanci">';
                                echo '<img src="'.UPLPATH.$row['slika'].'" width="55%" height="30%" alt="Ivan Rakitic" />';
                                echo '<br><br>';
                                echo '<a class="clanak-link" href="citaj-clanak.php?id='.$row['id'].'">';
                                echo '<h3>';
                                echo $row['naslov'];
                                echo '</h3>';
                                echo '</a>';
                                echo '<br>';
                                echo '<p>';
                                $str = $row['sazetak'];
                                echo substr($str, 0, 150) . '...';
                                echo '</p>';
                                echo '<br>';
                            echo '</div>';
                            $i=$i+1;
                            if($i > 1)
                            {
                                echo '</div>';
                                echo '<div class="sekcije-razmak">';
                                echo '</div>';
                                echo '<div class="sekcija-kategorija">';
                                echo '<div class="sekcija-kategorija-poredak">';
                                $i=0;
                            }
                            
                            }
                            ?>
                    </div>
                    </center>
                </div>
                <div class="sekcije-razmak">
                    <hr class="sekcije-hr">
                </div>
    </article>
    <footer>
    <center>
        <h4>Izrada:</h4>
        <h4>Luka Rukavina </h4>
        <p>lrukavina@tvz.hr</p>
    </center>
</footer>
</body>

</html>
