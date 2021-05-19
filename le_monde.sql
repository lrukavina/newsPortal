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
(1, '04.06.2020', 'Nova obdukcija: Floyd je umro od zastoja srca, ne od gušenja. Imao i koronavirus', 'SMRT Georgea Floyda izazvana je srčanim zastojem, zaključak je službenog patologa okruga Hennepin nakon završne autopsije provedene nad tijelom Afroamerikanca ubijenog tijekom privođenja, za što je optužen bivši policajac Derek Chauvin te još trojica njegovih kolega koje se tereti za sudioništvo i nečinjenje.', 'U izvješću dr. Andrewa Bakera stoji da je Floydov vrat bio pritisnut kad je Chauvin koljenom nasjeo na žrtvu i tako je držao više od osam minuta, ali se u zaključku to ne spominje kao izravan uzrok smrti. Floydova obitelj je financirala nezavisnu autopsiju, u kojoj se kao uzrok smrti navodi \"gušenje od stalnog pritiska\".\r\n\r\nU novom izvješću se navodi da je Floyd imao brojne masnice i posjekotine na glavi, licu, ustima, ramenima, rukama i nogama, ali ne postoji dokaz da je bilo koja od tih ozljeda bila smrtonosna. U završnoj autopsiji se navodi da je Floyd bio srčani bolesnik i da je patio od visokog tlaka te da je nedavno bio pozitivan na koronavirus, no bez indikacija da je to imalo bilo kakvu ulogu u njegovoj smrti.\r\n\r\nInicijalno toksikološko izvješće pokazalo je umjerene razine fentanila i metamfetamina u tijelu žrtve.\r\n\r\nNove optužnice za četiri policajca\r\n\r\nNove optužnice podignute su protiv sve četvorice otpuštenih policajaca koji su bili prisutni za vrijeme ubojstva crnog Amerikanca Georgea Floyda u Minneapolisu, objavio je u srijedu državni odvjetnik Minnesote.\r\n\r\nOptužnica protiv Dereka Chauvina pooštrena je s trećeg na ubojstvo drugog stupnja. Policajac, koji je koljenom pritiskao Floydov vrat i ugušio ga, prije je bio optužen za ubojstvo iz nehaja, a sad za ubojstvo bez namjere.\r\n\r\nOstala trojica policajaca suočena su s optužnicom za pomaganje i poticanje na ubojstvo.\r\n\r\nFloydova smrt izazvala je velike prosvjede diljem SAD-a protiv rasizma i policijske brutalnosti prema Afroamerikancima.', 'floyd.jpg', 'Politika', 0, 'Luka Rukavina'),
(2, '04.06.2020', 'Sin u Dubrovniku upucao roditelje, bore im se za život. Dio grada bio blokiran satima', 'NOĆAS nešto prije ponoći policija je dobila dojavu te je veliki broj policajaca okupirao Gruž.\r\n\r\nViše osoba završilo je u bolnici\r\n\r\nIz policijske uprave dubrovačko-neretvanske, jutros su priopćili kako je došlo do pucnjave u obiteljskoj kući kada je 37-godišnjak iz vatrenog oružja pucao u 68-godišnjaka i 67-godišnjakinju. Oni su zadobili teške tjelesne ozljede te se trenutno nalaze na liječenju u dubrovačkoj bolnici.', 'Tijekom noći policija je okupirala veliki dio Gruža u potrazi za počiniteljem, a provjeravali su i kafiće prilikom potrage. Počinitelj je uhićen tijekom noći i trenutno se nalazi u prostorijama policije na kriminalističkoj obradi.\r\n\r\nPolicija ga je navodno pronašla u drugom objektu u kojem se skrivao.\r\n\r\nDubrovački vjesnik piše kako su ranjeni muškarac i žena vlasnici jedne turističke agencije.', 'dubrovnik.jpg', 'Politika', 0, 'Luka Rukavina'),
(3, '04.06.2020', 'Rakitiću klub u koji želi otići postavio nevjerojatan zahtjev', 'SEVILLA želi Ivana Rakitića, ali uvjet njegovog povratka je da prije toga s Barcelonom raskine ugovor koji traje do lipnja 2021. godine. \r\n\r\nTako nešto je gotovo nemoguće očekivati. Španjolski prvak za hrvatskog reprezentativca koji na Camp Nouu nije u prvom planu traži između 15 i 20 milijuna eura kako bi taj novac uložio u dovođenje Lautara Martineza iz Intera.', 'Sevilla za 32-godišnjaka ne planira dati ni jedan euro Barceloni. I ne samo to već Mundo Deportivo javlja kako traže od Rakitića da pristane na puno manju plaću od one koju ima u Barceloni (oko osam milijuna eura). Problem je i duljina ugovora. Rakitić traži trogodišnji ugovor, a to se ne uklapa u Sevillinu klupsku viziju. \r\n\"Za Rakitića je i dalje prioritet Barcelona i završetak ove sezone u kojoj se lovi titula u Španjolskoj i u Ligi prvaka. Kasnije bi htio ostati u Primeri, najviše mu se sviđa opcija povratka u Sevillu. Tamo je idol navijača i to je grad njegove supruge\", pišu Katalonci i navode da situaciju s Rakitićem prati i Atletico.', 'rakitic.jpg', 'Sport', 0, 'Luka Rukavina'),
(4, '04.06.2020', 'Steve Kerr ismijao Trumpa i poručio: Evo zašto rasist ne smije biti predsjednik', 'AMERIKA je u plamenu nakon brutalnog policijskog ubojstva Afroamerikanca Georgea Floyda prije nekoliko dana. Podsjetimo, nesretnog Floyda je na ulici u Minneapolisu policajac Dereck Chauvin ugušio koljenom premda je žrtva molila za milost. Kamere su snimile cijeli događaj, snimka je obišla svijet, a to je ubojstvo bilo okidač za teške rasne nemire u cijelim Sjedinjenim Američkim Državama.', 'Američki predsjednik Donald Trump demonstrante je nazvao lopovima, razbojnicima i teroristima koje plaća George Soros da potkopavaju Ameriku. Trump je dodao da će njegova administracija pokret Antifa proglasiti terorističkom skupinom.\r\n\r\nTrumpove izjave komentirao je Steve Kerr, nekadašnji član trofejne generacije Bullsa s kraja 90-ih te trener šampionske momčadi Golden State Warriorsa.\'Prije tri godine Trump je nazvao Kaepernicka i ostale NFL igrače kurvinim sinovima zato što su mirno prosvjedovali zbog policijske brutalnosti. Prošle noći je prosvjednike nazvao razbojnicima. Evo zašto rasist ne smije biti predsjednik\', kazao je Kerr pa se obratio potpredsjedniku Amerike Mikeu Penceu koji je molio za mir, aludirajući da nasilje ugrožava imovinu građana.\r\n\r\n\'Mora da se šališ? Kako im\r\nAmerički mediji javljaju kako je policija jučer prekinula miran prosvjed ispred Bijele kuće bacanjem suzavca među gomilu ljudi kao da se u Americi odvija građanski rat. Sve zbog toga kako bi Trump mogao mirno pozirati ispred crkve i Biblijom u ruci.\r\n\r\nBilo je to dovoljno da mu Kerr sarkastično poruči: \'To je moj predsjednik.\'\r\n\r\n\'Osjećam se mnogo bolje kad ga vidim dok drži Bibliju. Sada znam da je moralni čovjek vođen obiteljskim vrijednostima i strogim etičkim pravilima. To mijenja sve\', napisao je Kerr na svom Twitter profilu.aš obraza ovo reći?\' bijesan je bio Kerr.\r\n\r\n', 'trump.jpg', 'Sport', 0, 'Luka Rukavina'),
(5, '04.06.2020', 'RMC: Guardiola za 50 milijuna eura radi neočekivani transfer u Italiji', 'RMC Sport piše da je Pep Guardiola iznenađujuće ponudio 50 milijuna eura za Milanovog veznjaka Ismaela Bennacera.\r\n\r\nRiječ je o 22-godišnjem Alžircu koji je na prošlom Afričkom kupu nacija bio proglašen za najboljeg igrača turnira nakon čega je za 16 milijuna eura u srpnju 2019. prešao iz Empolija u Milan.', 'Bennacer je playmaker i prema Transfermarktu vrijedi 17,5 milijuna eura, no Manchester City platit će 50 milijuna jer toliko teži njegova izlazna klauzula. \r\n\r\nOve sezone odigrao je 23 utakmice, ima jednu asistenciju, a njegov talent prvi je primijetio Arsene Wenger koji ga je 2015. za 300 tisuća eura doveo iz francuskog Arlesa u Arsenalovu drugu momčad.', 'guardiola.jpg', 'Sport', 0, 'Luka Rukavina'),
(6, '04.06.2020', 'Robert Kovač specijalni gost srpskog prvoligaša: ', 'SRPSKI prvoligaš Čukarički pohvalio se posebnim gostom na utakmici kupa protiv Radničkog-Robertom Kovačem.Robert Kovač, proslavljeni hrvatski reprezentativac, a sada trener, bio je specijalni gost Čukaričkog, na meču četvrtfinala Kupa Srbije', '\"Robert Kovač, proslavljeni hrvatski reprezentativac, a sada trener, bio je specijalni gost Čukaričkog, na meču četvrtfinala Kupa Srbije protiv niškog Radničkog. Kovač je 84 puta bio reprezentativac Hrvatske, a u bogatoj karijeri između ostalog nastupao je za Leverkusen, Bayern i Juventus. Trenersku karijeru Robert je gradio s bratom Nikom, čiji je bio pomoćnik na klupi reprezentacije Hrvatske, potom i Bayerna\", piše na službenim kanalima tog kluba.', 'kovac.jpg', 'Sport', 0, 'Luka Rukavina'),
(7, '04.06.2020', 'Kerumov show u Otvorenom, napao Selak Raspudić: Da sam tu sa ženom tko bi čuvao dicu?', 'NA TEMU predstojećih izbora u emisiji Otvoreno HRT-a gostovali su Marijana Petir, nezavisna kandidatkinja na listi HDZ-a, Marija Selak Raspudić, nezavisna kandidatkinja na listi Mosta, Mirela Holy, nezavisna kandidatkinja na listi Restart koalicije, Igor Peternel, Domovinski pokret Miroslava Škore, i Željko Kerum, predsjednik HGS-a.', 'Kerum je istaknuo kako nije ponovno došao u politiku, već da je on u politici već 12 godina.\r\n\r\n\"Moja je stranka već 12 godina prva u gradu Splitu, a druga u županiji\", rekao je Kerum, koji u studiju sjedi u narančastoj jakni, i dodao kako je u gradu u koaliciji s HDZ-om.\r\n\r\nNaglasio je kako ide na predstojeće izbore zbog birača koji ga zovu.\r\n\r\n\"Ako uđem u sabor, koalirat ću sa pobjednicima\", naglasio je Kerum i dodao kako misli da će HDZ pobijediti te da će se on s njima dogovoriti.\r\n\r\nSelak Raspudić je istaknula kako se HDZ i SDP ne mogu nakon devastacije kojoj smo svjedočili godinama kategorizirati kao prva ili druga liga.\r\n\r\n\"Smatram da ćemo i mi drugi doći u prvi plan kako bi stali na kraj ovoj vladajućoj oligarhiji koja je dovela zemlju u situaciju u kojoj se sada nalazi. Ovaj je saziv sabora, kako neki govore, najlošiji do sada. Svjedočimo rasapu institucija, a s time i nepovjerenju u politiku\", rekla je Selak Raspudić. \r\n\r\nMarijana Petir je rekla kako su je i Škoro i Plenković pozvali na razgovor. Saslušala je njihove programe i opcije, a oni su saslušali njezine, a to je da želi na izbore izaći kao nezavisna zastupnica.\r\n\r\nA onda je krenuo potpuni show Željka Keruma koji je potpuno preuzeo emisiju.\r\n\r\nPotpuni Kerumov show\r\n\r\n\"Ja uopće ne znam tko ste vas dvoje i koju stranku zastupate. Ja uopće ne znam u kojoj ste vi stranci. Zašto se vi natječete i koja ste vi stranka? Ja imam svoju stranku\", upitao je predsjednik HGS-a Željko Kerum Peternela i Mariju Selak Raspudić.\r\n\r\n\"Zar nije preveć, kako bi rekao predsjednik Tuđman, da idete i vi i suprug na izbore? Pa kako bi izgledalo da ja i moja žena smo tu sad? Tko bi dicu čuvao?\" rekao je Kerum Mariji Selak Raspudić.\r\n\r\n\"Nije koruptivan ni SDP ni HDZ, to su pojedinci\", rekao je Kerum pa blokirao upadicu Mirele Holy riječima: \"Vite gospođo.\"\r\n\r\n\"Ne postoji koruptivna vlada, ne postoji koruptivni HDZ i SDP. Postoje pojedinci. Uzeli su lovu pa neka se sad opravdavaju. Potpisivali su, zašto, imaju USKOK i DORH. Nije točno da se raspadaju društvo i država. Mi se moramo borit s onim šta nas je snašlo. Mi moramo razgovarat šta će se desit nakon sezone koje nema, šta će se desit za iduću koje isto neće bit. Mi nemamo drugog posla osim turizma i svi smo vezani za turizam\", govori Kerum.\r\n\r\nPeternel se pokušao ubaciti, ali je Kerum i njega blokirao.\r\n\r\n\"Gospodine, samo da završim, vi niste u životu podilili dvi plaće pa ne možete prekidat nekoga koji je dijelio po 3000 i 4000 plaće\", nastavlja Kerum. ', 'kerum.jpg', 'Politika', 0, 'Luka Rukavina'),
(8, '04.06.2020', 'Što ako Trump pošalje vojsku na prosvjednike u zemlji prepunoj oružja?', 'HOĆE LI američki predsjednik Donald Trump zaista poslati vojsku na prosvjednike u vlastitoj zemlji? Mnogi se to pitaju ovih dana, kako u SAD-u, tako i u ostatku svijeta.', 'No u određenom smislu to je pitanje izlišno jer je Trump već aktivirao vojsku i Nacionalnu gardu u području glavnog grada Washingtona, koji je izravno pod jurisdikcijom savezne vlade na čelu s predsjednikom. Pentagon je tako u utorak priopćio da je oko 1600 vojnika već raspoređeno u okolici Washingtona te da su u stanju \"pojačane pripravnosti\".\r\n\r\n>>Vojska raspoređena u okolici Washingtona, u stanju su pojačane pripravnosti\r\n\r\nIpak, glasnogovornik Pentagona Jonathan Rath Hoffman dao je do znanja da vojnici zasad nisu raspoređeni u samom glavnom gradu, već u vojnim bazama u njegovoj okolici. \r\n\r\nTrump je, podsjetimo, u ponedjeljak u svom govoru, koji je zgrozio kritičare i oduševio pristaše, zaprijetio da će poslati \"vojsku na ulice i brzo riješiti problem za njih\", misleći na guvernere i gradonačelnike, u slučaju da oni ne budu mogli obuzdati nerede koje, tvrdi Trumpova administracija, predvode anarhisti i pripadnici radikalnog lijevog pokreta Antifa. Na taj način će, rekao je, \"vratiti sigurnost u Ameriku\".\r\n\r\nPodsjetimo, prosvjedi i neredi, koji već više od tjedan dana traju diljem SAD-a, izbili su zbog brutalnog policijskog ubojstva 46-godišnjeg nenaoružanog Afroamerikanca Georgea Floyda u Minneapolisu, u Minnesoti, 25. svibnja.', 'vojska.jpg', 'Politika', 0, 'Luka Rukavina'),
(9, '04.06.2020', 'Ministrica smislila kako će sakriti istinu o domu iz kojeg je umrlo 18 staraca', 'MINISTARSTVO Vesne Bedeković donijelo je rješenje kojim nam uskraćuje pravo da dobijemo i objavimo inspekcijski izvještaj o stanju u splitskom Domu za starije i nemoćne u Vukovarskoj ulici. U njemu je, kao što je poznato, čak 68 osoba zaraženo covidom-19, a 18 ih je preminulo. Ravnatelj doma je Ivan Škaričić, profesor povijesti, bivši omiški gradonačelnik, član HDZ-a.', 'U rješenju od 26. svibnja s potpisom Dobrile Miletić, službenice Ministarstva za informiranje, stoji da je \"odredbama članka 15. stavka 1. Zakona o pravu na pristup informacijama propisano da će tijela javne vlasti ograničiti pristup informacijama koje se tiču svih postupaka koje vode nadležna tijela u prethodnom i kaznenom postupku za vrijeme trajanja tih postupaka\". Želja Ministarstva da zataji izvještaje jača je od stava splitskog Općinskog državnog odvjetništva (ODO) da se ne protivi njihovoj objavi o čemu smo dva puta pisali. ODO vodi izvide u ovom slučaju.\r\n\r\n>> Beroš izmišlja razloge da sakrije izvještaj o događajima u splitskom Domu\r\n\r\n>> Zna li ministrica Bedeković čitati?\r\n\r\n\"Pristup informacijama se ograničava po sili zakona\"\r\n\r\nMinistarstvo Vesne Bedeković pozvalo se na članak 15. stavak 1. Zakona o pravu na pristup informacijama te zapazilo kako, \"uzevši u obzir spomenutu zakonsku odredbu, pristup traženim informacijama se ograničava po sili zakona\".\r\n\r\nUpravo su ministrica Bedeković i ministar zdravstva Vili Beroš prvi javno progovorili o inspekcijskim izvještajima. Na konferenciji za novinare održanoj 1. svibnja otkrili su kako su njihovi inspektori ustanovili da u Domu za starije i nemoćne osobe u Vukovarskoj nije bilo propusta. \r\n\r\nI dalje je jedini krivac - virus\r\n\r\n', 'ministrica.jpg', 'Politika', 0, 'Luka Rukavina'),
(10, '04.06.2020', 'Slavni košarkaš bio je poput brata ubijenom Floydu: Odvesti ću mu kćer do oltara', 'GEORGE FLOYD, tamnoputi Amerikanac koji je prošlog tjedna preminuo uslijed policijske brutalnosti, bio je jako dobar prijatelj s nekadašnjom NBA zvijezdom Stephenom Jacksonom, koji je majci Floydova djeteta obećao da će se brinuti za njihovu kćer.', 'NBA prvak sa San Antonio Spursima 2003. upoznao je Floyda preko zajedničkog prijatelja i odmah su kliknuli, a zbog fizičke sličnosti su se šalili da su blizanci i tako su jedan drugoga i oslovljavali.\r\n\"Svaki put kad bih igrao u Houstonu, prvo sam se njemu javio. Kad si profesionalni sportaš, mnogi žele iskoristiti tvoje prijateljstvo i ljubaznost, ali on je bio jedan od onih koji su me istinski podržavali, bez ikakvih skrivenih motiva\", govorio je Captain Jack nakon Floydove smrti.\r\n\r\nJackson je od Floydove smrti jedan od najglasnijih zagovornika promjena u Americi, a inzistira da se ne osudi samo policajac koji je ubio Floyda držeći mu koljeno na vratu nego i trojica koja su bila uz njega. Vrlo je blizak i s Floydovom šestogodišnjom kćeri Giannom te je njenoj majci Roxie Washington obećao da će biti tu za nju kad god bude trebalo.', 'kosarkas.jpg', 'Sport', 0, 'Luka Rukavina'),
(14, '08.06.2020', 'Beroš nas je nazvao: Nisam razmišljao o domovima za starije, to nije moj problem', 'MINISTAR zdravstva Vili Beroš jutros je Indexu izjavio da on nema nikakve ovlasti nad domovima za starije te kako mu ne smeta objava inspekcijskog izvještaja o splitskom Domu za starije i nemoćne osobe u Vukovarskoj ulici.', 'Javio nam se prvi put nakon što ga mjesec i pol dana tražimo objavu inspekcijskog izvještaja\r\n\r\nBeroš nam se javio danas prvi put iako skoro mjesec i pol pokušavamo od njegova Ministarstva i Ministarstva za demografiju, obitelj, mlade i socijalnu politiku dobiti inspekcijske izvještaje, čije je zaključke ministar objavio 25. travnja, a potom s ministricom Vesnom Bedeković i 1. svibnja. Prema zaključcima, u splitskom Domu, u kojem je covidom-19 zaraženo 68 ljudi, a 18 ih je preminulo, nije bilo stručnih propusta. Danas nam je otkrio i kako je izvješće njegova Ministarstva relativno skromno.\r\n\r\nMinistrov monolog\r\n\r\nRazgovor, koji je zapravo bio ministrov monolog, započeli smo pitanjem je li Ministarstvo zdravstva, poput Ministarstva za demografiju, obitelj, mlade i socijalnu politiku, zatražilo mišljenje glavne državne odvjetnice o objavi inspekcijskih izvještaja. ', 'beros.jpg', 'Politika', 0, 'Luka Rukavina'),
(15, '08.06.2020', 'Arsenalov golman o Bundesligi i Bayernu: To je sve dosadno i tužno', 'GOLMAN Arsenala Bernd Leno dobro zna kako je igrati protiv Bayerna budući da je od 2011. do 2018. branio za Bayer Leverkusen\r\nU njegovom bundesligaškom periodu klub iz Münchena osvojio je sedam naslova prvaka, a dva su pripala Borussiji Dortmund. Danas je Bayern vrlo blizu obrane titule i nastavka dominacije započete 2013. godine.', '\"Bayern je već prvak, kao i uvijek. To je dosadno i tužno. Uvijek želite uzbudljivu utrku za naslov prvaka, ali to se neće dogoditi u bližoj budućnosti. Bayern je jednostavno prejak\", rekao je 28-godišnji golman Topnika.', 'arsenal.jpg', 'Sport', 0, 'Petar Osterman');

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
