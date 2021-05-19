<html>

<?php
if(!isset($_SESSION["login"])){
?>
<div class="ul-navigacija nav-dizajn">
                 <a class="nav-link nav-dizajn animated slideInLeft" href="index.php">POČETNA</a>
                 <a class="nav-link animated slideInLeft" href="kategorija.php?id=politika">POLITIKA</a>
                 <a class="nav-link animated slideInLeft" href="kategorija.php?id=sport">SPORT</a>
                 <a class="nav-link-prijava animated slideInRight" href="prijava.php">PRIJAVA</a>
</div>
<?php
}
else{ 
?>
<div class="ul-navigacija nav-dizajn">
                 <a class="nav-link nav-dizajn animated slideInLeft" href="index.php">POČETNA</a>
                 <a class="nav-link animated slideInLeft" href="kategorija.php?id=politika">POLITIKA</a>
                 <a class="nav-link animated slideInLeft" href="kategorija.php?id=sport">SPORT</a>
                 <a class="nav-link animated slideInLeft" href="administracija.php">ADMINISTRACIJA</a>
                 <a class="nav-link-prijava animated slideInRight" href="odjava.php">ODJAVA</a>
</div>
<?php
}
?>
</html>