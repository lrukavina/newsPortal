-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 09:55 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `le_monde`
--
CREATE DATABASE IF NOT EXISTS `le_monde` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `le_monde`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `Ime` varchar(32) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `Prezime` varchar(32) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `korisnickoIme` varchar(32) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `dozvola` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `Ime`, `Prezime`, `korisnickoIme`, `lozinka`, `dozvola`) VALUES
(1, 'Luka', 'Rukavina', 'lrukavina', '$2a$07$TN6BHxxhkuWL16zPBess9.RKh2ujo352qLvQ.boMxGGZR0cllZElS', 1),
(2, 'Petar', 'Osterman', 'posterman', '$2a$07$FGq7PcSTmtWbGqIF6nbzZei01HkyCCQUUgc5FquyewOudJwmbHsAO', 1);

-- --------------------------------------------------------

--
-- Table structure for table `novosti`
--

CREATE TABLE `novosti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(256) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL,
  `autor` varchar(255) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novosti`
--

INSERT INTO `novosti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`, `autor`) VALUES
(1, '04.06.2020', 'Nova obdukcija: Floyd je umro od zastoja srca, ne od gu??enja. Imao i koronavirus', 'SMRT Georgea Floyda izazvana je sr??anim zastojem, zaklju??ak je slu??benog patologa okruga Hennepin nakon zavr??ne autopsije provedene nad tijelom Afroamerikanca ubijenog tijekom privo??enja, za ??to je optu??en biv??i policajac Derek Chauvin te jo?? trojica njegovih kolega koje se tereti za sudioni??tvo i ne??injenje.', 'U izvje????u dr. Andrewa Bakera stoji da je Floydov vrat bio pritisnut kad je Chauvin koljenom nasjeo na ??rtvu i tako je dr??ao vi??e od osam minuta, ali se u zaklju??ku to ne spominje kao izravan uzrok smrti. Floydova obitelj je financirala nezavisnu autopsiju, u kojoj se kao uzrok smrti navodi \"gu??enje od stalnog pritiska\".\r\n\r\nU novom izvje????u se navodi da je Floyd imao brojne masnice i posjekotine na glavi, licu, ustima, ramenima, rukama i nogama, ali ne postoji dokaz da je bilo koja od tih ozljeda bila smrtonosna. U zavr??noj autopsiji se navodi da je Floyd bio sr??ani bolesnik i da je patio od visokog tlaka te da je nedavno bio pozitivan na koronavirus, no bez indikacija da je to imalo bilo kakvu ulogu u njegovoj smrti.\r\n\r\nInicijalno toksikolo??ko izvje????e pokazalo je umjerene razine fentanila i metamfetamina u tijelu ??rtve.\r\n\r\nNove optu??nice za ??etiri policajca\r\n\r\nNove optu??nice podignute su protiv sve ??etvorice otpu??tenih policajaca koji su bili prisutni za vrijeme ubojstva crnog Amerikanca Georgea Floyda u Minneapolisu, objavio je u srijedu dr??avni odvjetnik Minnesote.\r\n\r\nOptu??nica protiv Dereka Chauvina poo??trena je s tre??eg na ubojstvo drugog stupnja. Policajac, koji je koljenom pritiskao Floydov vrat i ugu??io ga, prije je bio optu??en za ubojstvo iz nehaja, a sad za ubojstvo bez namjere.\r\n\r\nOstala trojica policajaca suo??ena su s optu??nicom za pomaganje i poticanje na ubojstvo.\r\n\r\nFloydova smrt izazvala je velike prosvjede diljem SAD-a protiv rasizma i policijske brutalnosti prema Afroamerikancima.', 'floyd.jpg', 'Politika', 0, 'Luka Rukavina'),
(2, '04.06.2020', 'Sin u Dubrovniku upucao roditelje, bore im se za ??ivot. Dio grada bio blokiran satima', 'NO??AS ne??to prije pono??i policija je dobila dojavu te je veliki broj policajaca okupirao Gru??.\r\n\r\nVi??e osoba zavr??ilo je u bolnici\r\n\r\nIz policijske uprave dubrova??ko-neretvanske, jutros su priop??ili kako je do??lo do pucnjave u obiteljskoj ku??i kada je 37-godi??njak iz vatrenog oru??ja pucao u 68-godi??njaka i 67-godi??njakinju. Oni su zadobili te??ke tjelesne ozljede te se trenutno nalaze na lije??enju u dubrova??koj bolnici.', 'Tijekom no??i policija je okupirala veliki dio Gru??a u potrazi za po??initeljem, a provjeravali su i kafi??e prilikom potrage. Po??initelj je uhi??en tijekom no??i i trenutno se nalazi u prostorijama policije na kriminalisti??koj obradi.\r\n\r\nPolicija ga je navodno prona??la u drugom objektu u kojem se skrivao.\r\n\r\nDubrova??ki vjesnik pi??e kako su ranjeni mu??karac i ??ena vlasnici jedne turisti??ke agencije.', 'dubrovnik.jpg', 'Politika', 0, 'Luka Rukavina'),
(3, '04.06.2020', 'Rakiti??u klub u koji ??eli oti??i postavio nevjerojatan zahtjev', 'SEVILLA ??eli Ivana Rakiti??a, ali uvjet njegovog povratka je da prije toga s Barcelonom raskine ugovor koji traje do lipnja 2021. godine. \r\n\r\nTako ne??to je gotovo nemogu??e o??ekivati. ??panjolski prvak za hrvatskog reprezentativca koji na Camp Nouu nije u prvom planu tra??i izme??u 15 i 20 milijuna eura kako bi taj novac ulo??io u dovo??enje Lautara Martineza iz Intera.', 'Sevilla za 32-godi??njaka ne planira dati ni jedan euro Barceloni. I ne samo to ve?? Mundo Deportivo javlja kako tra??e od Rakiti??a da pristane na puno manju pla??u od one koju ima u Barceloni (oko osam milijuna eura). Problem je i duljina ugovora. Rakiti?? tra??i trogodi??nji ugovor, a to se ne uklapa u Sevillinu klupsku viziju. \r\n\"Za Rakiti??a je i dalje prioritet Barcelona i zavr??etak ove sezone u kojoj se lovi titula u ??panjolskoj i u Ligi prvaka. Kasnije bi htio ostati u Primeri, najvi??e mu se svi??a opcija povratka u Sevillu. Tamo je idol navija??a i to je grad njegove supruge\", pi??u Katalonci i navode da situaciju s Rakiti??em prati i Atletico.', 'rakitic.jpg', 'Sport', 0, 'Luka Rukavina'),
(4, '04.06.2020', 'Steve Kerr ismijao Trumpa i poru??io: Evo za??to rasist ne smije biti predsjednik', 'AMERIKA je u plamenu nakon brutalnog policijskog ubojstva Afroamerikanca Georgea Floyda prije nekoliko dana. Podsjetimo, nesretnog Floyda je na ulici u Minneapolisu policajac Dereck Chauvin ugu??io koljenom premda je ??rtva molila za milost. Kamere su snimile cijeli doga??aj, snimka je obi??la svijet, a to je ubojstvo bilo okida?? za te??ke rasne nemire u cijelim Sjedinjenim Ameri??kim Dr??avama.', 'Ameri??ki predsjednik Donald Trump demonstrante je nazvao lopovima, razbojnicima i teroristima koje pla??a George Soros da potkopavaju Ameriku. Trump je dodao da ??e njegova administracija pokret Antifa proglasiti teroristi??kom skupinom.\r\n\r\nTrumpove izjave komentirao je Steve Kerr, nekada??nji ??lan trofejne generacije Bullsa s kraja 90-ih te trener ??ampionske mom??adi Golden State Warriorsa.\'Prije tri godine Trump je nazvao Kaepernicka i ostale NFL igra??e kurvinim sinovima zato ??to su mirno prosvjedovali zbog policijske brutalnosti. Pro??le no??i je prosvjednike nazvao razbojnicima. Evo za??to rasist ne smije biti predsjednik\', kazao je Kerr pa se obratio potpredsjedniku Amerike Mikeu Penceu koji je molio za mir, aludiraju??i da nasilje ugro??ava imovinu gra??ana.\r\n\r\n\'Mora da se ??ali??? Kako im\r\nAmeri??ki mediji javljaju kako je policija ju??er prekinula miran prosvjed ispred Bijele ku??e bacanjem suzavca me??u gomilu ljudi kao da se u Americi odvija gra??anski rat. Sve zbog toga kako bi Trump mogao mirno pozirati ispred crkve i Biblijom u ruci.\r\n\r\nBilo je to dovoljno da mu Kerr sarkasti??no poru??i: \'To je moj predsjednik.\'\r\n\r\n\'Osje??am se mnogo bolje kad ga vidim dok dr??i Bibliju. Sada znam da je moralni ??ovjek vo??en obiteljskim vrijednostima i strogim eti??kim pravilima. To mijenja sve\', napisao je Kerr na svom Twitter profilu.a?? obraza ovo re??i?\' bijesan je bio Kerr.\r\n\r\n', 'trump.jpg', 'Sport', 0, 'Luka Rukavina'),
(5, '04.06.2020', 'RMC: Guardiola za 50 milijuna eura radi neo??ekivani transfer u Italiji', 'RMC Sport pi??e da je Pep Guardiola iznena??uju??e ponudio 50 milijuna eura za Milanovog veznjaka Ismaela Bennacera.\r\n\r\nRije?? je o 22-godi??njem Al??ircu koji je na pro??lom Afri??kom kupu nacija bio progla??en za najboljeg igra??a turnira nakon ??ega je za 16 milijuna eura u srpnju 2019. pre??ao iz Empolija u Milan.', 'Bennacer je playmaker i prema Transfermarktu vrijedi 17,5 milijuna eura, no Manchester City platit ??e 50 milijuna jer toliko te??i njegova izlazna klauzula. \r\n\r\nOve sezone odigrao je 23 utakmice, ima jednu asistenciju, a njegov talent prvi je primijetio Arsene Wenger koji ga je 2015. za 300 tisu??a eura doveo iz francuskog Arlesa u Arsenalovu drugu mom??ad.', 'guardiola.jpg', 'Sport', 0, 'Luka Rukavina'),
(6, '04.06.2020', 'Robert Kova?? specijalni gost srpskog prvoliga??a: ', 'SRPSKI prvoliga?? ??ukari??ki pohvalio se posebnim gostom na utakmici kupa protiv Radni??kog-Robertom Kova??em.Robert Kova??, proslavljeni hrvatski reprezentativac, a sada trener, bio je specijalni gost ??ukari??kog, na me??u ??etvrtfinala Kupa Srbije', '\"Robert Kova??, proslavljeni hrvatski reprezentativac, a sada trener, bio je specijalni gost ??ukari??kog, na me??u ??etvrtfinala Kupa Srbije protiv ni??kog Radni??kog. Kova?? je 84 puta bio reprezentativac Hrvatske, a u bogatoj karijeri izme??u ostalog nastupao je za Leverkusen, Bayern i Juventus. Trenersku karijeru Robert je gradio s bratom Nikom, ??iji je bio pomo??nik na klupi reprezentacije Hrvatske, potom i Bayerna\", pi??e na slu??benim kanalima tog kluba.', 'kovac.jpg', 'Sport', 0, 'Luka Rukavina'),
(7, '04.06.2020', 'Kerumov show u Otvorenom, napao Selak Raspudi??: Da sam tu sa ??enom tko bi ??uvao dicu?', 'NA TEMU predstoje??ih izbora u emisiji Otvoreno HRT-a gostovali su Marijana Petir, nezavisna kandidatkinja na listi HDZ-a, Marija Selak Raspudi??, nezavisna kandidatkinja na listi Mosta, Mirela Holy, nezavisna kandidatkinja na listi Restart koalicije, Igor Peternel, Domovinski pokret Miroslava ??kore, i ??eljko Kerum, predsjednik HGS-a.', 'Kerum je istaknuo kako nije ponovno do??ao u politiku, ve?? da je on u politici ve?? 12 godina.\r\n\r\n\"Moja je stranka ve?? 12 godina prva u gradu Splitu, a druga u ??upaniji\", rekao je Kerum, koji u studiju sjedi u naran??astoj jakni, i dodao kako je u gradu u koaliciji s HDZ-om.\r\n\r\nNaglasio je kako ide na predstoje??e izbore zbog bira??a koji ga zovu.\r\n\r\n\"Ako u??em u sabor, koalirat ??u sa pobjednicima\", naglasio je Kerum i dodao kako misli da ??e HDZ pobijediti te da ??e se on s njima dogovoriti.\r\n\r\nSelak Raspudi?? je istaknula kako se HDZ i SDP ne mogu nakon devastacije kojoj smo svjedo??ili godinama kategorizirati kao prva ili druga liga.\r\n\r\n\"Smatram da ??emo i mi drugi do??i u prvi plan kako bi stali na kraj ovoj vladaju??oj oligarhiji koja je dovela zemlju u situaciju u kojoj se sada nalazi. Ovaj je saziv sabora, kako neki govore, najlo??iji do sada. Svjedo??imo rasapu institucija, a s time i nepovjerenju u politiku\", rekla je Selak Raspudi??. \r\n\r\nMarijana Petir je rekla kako su je i ??koro i Plenkovi?? pozvali na razgovor. Saslu??ala je njihove programe i opcije, a oni su saslu??ali njezine, a to je da ??eli na izbore iza??i kao nezavisna zastupnica.\r\n\r\nA onda je krenuo potpuni show ??eljka Keruma koji je potpuno preuzeo emisiju.\r\n\r\nPotpuni Kerumov show\r\n\r\n\"Ja uop??e ne znam tko ste vas dvoje i koju stranku zastupate. Ja uop??e ne znam u kojoj ste vi stranci. Za??to se vi natje??ete i koja ste vi stranka? Ja imam svoju stranku\", upitao je predsjednik HGS-a ??eljko Kerum Peternela i Mariju Selak Raspudi??.\r\n\r\n\"Zar nije preve??, kako bi rekao predsjednik Tu??man, da idete i vi i suprug na izbore? Pa kako bi izgledalo da ja i moja ??ena smo tu sad? Tko bi dicu ??uvao?\" rekao je Kerum Mariji Selak Raspudi??.\r\n\r\n\"Nije koruptivan ni SDP ni HDZ, to su pojedinci\", rekao je Kerum pa blokirao upadicu Mirele Holy rije??ima: \"Vite gospo??o.\"\r\n\r\n\"Ne postoji koruptivna vlada, ne postoji koruptivni HDZ i SDP. Postoje pojedinci. Uzeli su lovu pa neka se sad opravdavaju. Potpisivali su, za??to, imaju USKOK i DORH. Nije to??no da se raspadaju dru??tvo i dr??ava. Mi se moramo borit s onim ??ta nas je sna??lo. Mi moramo razgovarat ??ta ??e se desit nakon sezone koje nema, ??ta ??e se desit za idu??u koje isto ne??e bit. Mi nemamo drugog posla osim turizma i svi smo vezani za turizam\", govori Kerum.\r\n\r\nPeternel se poku??ao ubaciti, ali je Kerum i njega blokirao.\r\n\r\n\"Gospodine, samo da zavr??im, vi niste u ??ivotu podilili dvi pla??e pa ne mo??ete prekidat nekoga koji je dijelio po 3000 i 4000 pla??e\", nastavlja Kerum. ', 'kerum.jpg', 'Politika', 0, 'Luka Rukavina'),
(8, '04.06.2020', '??to ako Trump po??alje vojsku na prosvjednike u zemlji prepunoj oru??ja?', 'HO??E LI ameri??ki predsjednik Donald Trump zaista poslati vojsku na prosvjednike u vlastitoj zemlji? Mnogi se to pitaju ovih dana, kako u SAD-u, tako i u ostatku svijeta.', 'No u odre??enom smislu to je pitanje izli??no jer je Trump ve?? aktivirao vojsku i Nacionalnu gardu u podru??ju glavnog grada Washingtona, koji je izravno pod jurisdikcijom savezne vlade na ??elu s predsjednikom. Pentagon je tako u utorak priop??io da je oko 1600 vojnika ve?? raspore??eno u okolici Washingtona te da su u stanju \"poja??ane pripravnosti\".\r\n\r\n>>Vojska raspore??ena u okolici Washingtona, u stanju su poja??ane pripravnosti\r\n\r\nIpak, glasnogovornik Pentagona Jonathan Rath Hoffman dao je do znanja da vojnici zasad nisu raspore??eni u samom glavnom gradu, ve?? u vojnim bazama u njegovoj okolici. \r\n\r\nTrump je, podsjetimo, u ponedjeljak u svom govoru, koji je zgrozio kriti??are i odu??evio prista??e, zaprijetio da ??e poslati \"vojsku na ulice i brzo rije??iti problem za njih\", misle??i na guvernere i gradona??elnike, u slu??aju da oni ne budu mogli obuzdati nerede koje, tvrdi Trumpova administracija, predvode anarhisti i pripadnici radikalnog lijevog pokreta Antifa. Na taj na??in ??e, rekao je, \"vratiti sigurnost u Ameriku\".\r\n\r\nPodsjetimo, prosvjedi i neredi, koji ve?? vi??e od tjedan dana traju diljem SAD-a, izbili su zbog brutalnog policijskog ubojstva 46-godi??njeg nenaoru??anog Afroamerikanca Georgea Floyda u Minneapolisu, u Minnesoti, 25. svibnja.', 'vojska.jpg', 'Politika', 0, 'Luka Rukavina'),
(9, '04.06.2020', 'Ministrica smislila kako ??e sakriti istinu o domu iz kojeg je umrlo 18 staraca', 'MINISTARSTVO Vesne Bedekovi?? donijelo je rje??enje kojim nam uskra??uje pravo da dobijemo i objavimo inspekcijski izvje??taj o stanju u splitskom Domu za starije i nemo??ne u Vukovarskoj ulici. U njemu je, kao ??to je poznato, ??ak 68 osoba zara??eno covidom-19, a 18 ih je preminulo. Ravnatelj doma je Ivan ??kari??i??, profesor povijesti, biv??i omi??ki gradona??elnik, ??lan HDZ-a.', 'U rje??enju od 26. svibnja s potpisom Dobrile Mileti??, slu??benice Ministarstva za informiranje, stoji da je \"odredbama ??lanka 15. stavka 1. Zakona o pravu na pristup informacijama propisano da ??e tijela javne vlasti ograni??iti pristup informacijama koje se ti??u svih postupaka koje vode nadle??na tijela u prethodnom i kaznenom postupku za vrijeme trajanja tih postupaka\". ??elja Ministarstva da zataji izvje??taje ja??a je od stava splitskog Op??inskog dr??avnog odvjetni??tva (ODO) da se ne protivi njihovoj objavi o ??emu smo dva puta pisali. ODO vodi izvide u ovom slu??aju.\r\n\r\n>> Bero?? izmi??lja razloge da sakrije izvje??taj o doga??ajima u splitskom Domu\r\n\r\n>> Zna li ministrica Bedekovi?? ??itati?\r\n\r\n\"Pristup informacijama se ograni??ava po sili zakona\"\r\n\r\nMinistarstvo Vesne Bedekovi?? pozvalo se na ??lanak 15. stavak 1. Zakona o pravu na pristup informacijama te zapazilo kako, \"uzev??i u obzir spomenutu zakonsku odredbu, pristup tra??enim informacijama se ograni??ava po sili zakona\".\r\n\r\nUpravo su ministrica Bedekovi?? i ministar zdravstva Vili Bero?? prvi javno progovorili o inspekcijskim izvje??tajima. Na konferenciji za novinare odr??anoj 1. svibnja otkrili su kako su njihovi inspektori ustanovili da u Domu za starije i nemo??ne osobe u Vukovarskoj nije bilo propusta. \r\n\r\nI dalje je jedini krivac - virus\r\n\r\n', 'ministrica.jpg', 'Politika', 0, 'Luka Rukavina'),
(10, '04.06.2020', 'Slavni ko??arka?? bio je poput brata ubijenom Floydu: Odvesti ??u mu k??er do oltara', 'GEORGE FLOYD, tamnoputi Amerikanac koji je pro??log tjedna preminuo uslijed policijske brutalnosti, bio je jako dobar prijatelj s nekada??njom NBA zvijezdom Stephenom Jacksonom, koji je majci Floydova djeteta obe??ao da ??e se brinuti za njihovu k??er.', 'NBA prvak sa San Antonio Spursima 2003. upoznao je Floyda preko zajedni??kog prijatelja i odmah su kliknuli, a zbog fizi??ke sli??nosti su se ??alili da su blizanci i tako su jedan drugoga i oslovljavali.\r\n\"Svaki put kad bih igrao u Houstonu, prvo sam se njemu javio. Kad si profesionalni sporta??, mnogi ??ele iskoristiti tvoje prijateljstvo i ljubaznost, ali on je bio jedan od onih koji su me istinski podr??avali, bez ikakvih skrivenih motiva\", govorio je Captain Jack nakon Floydove smrti.\r\n\r\nJackson je od Floydove smrti jedan od najglasnijih zagovornika promjena u Americi, a inzistira da se ne osudi samo policajac koji je ubio Floyda dr??e??i mu koljeno na vratu nego i trojica koja su bila uz njega. Vrlo je blizak i s Floydovom ??estogodi??njom k??eri Giannom te je njenoj majci Roxie Washington obe??ao da ??e biti tu za nju kad god bude trebalo.', 'kosarkas.jpg', 'Sport', 0, 'Luka Rukavina'),
(14, '08.06.2020', 'Bero?? nas je nazvao: Nisam razmi??ljao o domovima za starije, to nije moj problem', 'MINISTAR zdravstva Vili Bero?? jutros je Indexu izjavio da on nema nikakve ovlasti nad domovima za starije te kako mu ne smeta objava inspekcijskog izvje??taja o splitskom Domu za starije i nemo??ne osobe u Vukovarskoj ulici.', 'Javio nam se prvi put nakon ??to ga mjesec i pol dana tra??imo objavu inspekcijskog izvje??taja\r\n\r\nBero?? nam se javio danas prvi put iako skoro mjesec i pol poku??avamo od njegova Ministarstva i Ministarstva za demografiju, obitelj, mlade i socijalnu politiku dobiti inspekcijske izvje??taje, ??ije je zaklju??ke ministar objavio 25. travnja, a potom s ministricom Vesnom Bedekovi?? i 1. svibnja. Prema zaklju??cima, u splitskom Domu, u kojem je covidom-19 zara??eno 68 ljudi, a 18 ih je preminulo, nije bilo stru??nih propusta. Danas nam je otkrio i kako je izvje????e njegova Ministarstva relativno skromno.\r\n\r\nMinistrov monolog\r\n\r\nRazgovor, koji je zapravo bio ministrov monolog, zapo??eli smo pitanjem je li Ministarstvo zdravstva, poput Ministarstva za demografiju, obitelj, mlade i socijalnu politiku, zatra??ilo mi??ljenje glavne dr??avne odvjetnice o objavi inspekcijskih izvje??taja. ', 'beros.jpg', 'Politika', 0, 'Luka Rukavina'),
(15, '08.06.2020', 'Arsenalov golman o Bundesligi i Bayernu: To je sve dosadno i tu??no', 'GOLMAN Arsenala Bernd Leno dobro zna kako je igrati protiv Bayerna budu??i da je od 2011. do 2018. branio za Bayer Leverkusen\r\nU njegovom bundesliga??kom periodu klub iz M??nchena osvojio je sedam naslova prvaka, a dva su pripala Borussiji Dortmund. Danas je Bayern vrlo blizu obrane titule i nastavka dominacije zapo??ete 2013. godine.', '\"Bayern je ve?? prvak, kao i uvijek. To je dosadno i tu??no. Uvijek ??elite uzbudljivu utrku za naslov prvaka, ali to se ne??e dogoditi u bli??oj budu??nosti. Bayern je jednostavno prejak\", rekao je 28-godi??nji golman Topnika.', 'arsenal.jpg', 'Sport', 0, 'Petar Osterman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- Indexes for table `novosti`
--
ALTER TABLE `novosti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `novosti`
--
ALTER TABLE `novosti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
