<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel=icon href=img/favicon.png sizes="64x64" type="image/png">
    <meta http-equiv="Cache-control" content="no-cache">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <link href="animate.css" type="text/css" rel="stylesheet" />
    <link href="administracija.css" type="text/css" rel="stylesheet" />
    <title>Le Monde | Dodaj novi članak</title>
</head>
<header>
        <center>
            <a href="index.php"><img src="img/logo.png" height="10%" alt="Le Monde" /></a>
        </center>
        <hr>
        <div class="navigacija-sjena">
        <nav class="navigacija">
            <div class="ul-navigacija nav-dizajn">
                 <a class="nav-link nav-dizajn animated slideInLeft" href="index.php">POČETNA</a>
                 <a class="nav-link animated slideInLeft" href="#">POLITIKA</a>
                 <a class="nav-link animated slideInLeft" href="#">SPORT</a>
                 <a class="nav-link animated slideInLeft" href="administracija.php">ADMINISTRACIJA</a>
                 <a class="nav-link-prijava animated slideInRight" href="prijava.php">ODJAVA</a>
            </div>
        </nav>
        </div>
    </header>

    <div class="header-razmak">

</div>
<article>
    <div class="wrapper">
        
        <div class="sekcije animated fadeIn">
            
            <div class="sekcije-razmak">
                <hr class="sekcije-hr">
            </div>
        <center>
        <form enctype="multipart/form-data" action="skripta-dodaj.php" method="POST">
		<div class="form-item">
			<label for="title">Naslov vijesti</label>
			<div class="form-field">
				<input type="text" name="title" class="form-field-textual">
			</div>
        </div>

		<div class="form-item">
			<label for="about">Kratki sadržaj vijesti (do 150 znakova)</label>
			<div class="form-field">
				<textarea name="about" id="" cols="30" rows="10"></textarea>
			</div>
		</div>

		<div class="form-item">
			<label for="content">Sadržaj vijesti</label>
			<div class="form-field">
				<textarea name="content" id="" cols="30" rows="10"></textarea>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label for="pphoto">Slika</label>
			<div class="form-field">
				<input type="file" accept="image/jpeg, image/gif" class="input-text" name="pphoto"/>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label for="category">Kategorija vijesti</label>
			<div class="form-field">
				<select name="category" id="" class="form-field-textual">
					<option value="Sport">Sport</option>
					<option value="Politika">Politika</option>
				</select>
			</div>
        </div>
        <br>

		<div class="form-item">
			<label>Spremiti u arhivu:
				<div class="form-field">
					<input type="checkbox" name="archive">
				</div>
			</label>
		</div>

		<div class="form-item">
			<input type="reset" value="Poništi" name="poništi"> 
			<input type="submit" value="Prihvati" name="prihvati">
        </div>
        <br>
	</form>
    </center>
    <div class="sekcije-razmak">
                <hr class="sekcije-hr">
            </div>
        </div>
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