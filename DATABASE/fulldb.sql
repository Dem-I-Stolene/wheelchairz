-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:3306
-- Genereringstid: 27. 02 2018 kl. 09:12:14
-- Serverversion: 5.6.35
-- PHP-version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wheelchairz`
--
CREATE DATABASE IF NOT EXISTS `wheelchairz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wheelchairz`;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `galleries`
--

CREATE TABLE `galleries` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `galleries`
--

INSERT INTO `galleries` (`g_id`, `g_name`) VALUES
(2, 'Transport'),
(3, 'Seværdigheder'),
(4, 'Parker'),
(5, 'Øjenberetninger'),
(6, 'Shopping');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `images`
--

CREATE TABLE `images` (
  `i_id` int(11) NOT NULL,
  `i_file` varchar(100) NOT NULL DEFAULT '',
  `i_alt` varchar(150) NOT NULL,
  `i_g_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `images`
--

INSERT INTO `images` (`i_id`, `i_file`, `i_alt`, `i_g_id`) VALUES
(4, 'IMG_1842.jpg', '', 2),
(5, 'IMG_1822.jpg', '', 2),
(6, 'IMG_1850.jpg', '', 2),
(7, 'IMG_1840.jpg', '', 2),
(8, 'IMG_1747.jpg', '', 3),
(9, 'IMG_2004.jpg', '', 3),
(10, 'IMG_1986-2.jpg', '', 3),
(11, '_O8A7963.jpg', '', 3),
(12, 'IMG_1969.jpg', '', 3),
(13, 'IMG_2057-2.jpg', '', 4),
(14, 'IMG_2067.jpg', '', 4),
(15, 'IMG_2026.jpg', '', 4),
(16, 'IMG_2006.jpg', '', 5),
(17, 'IMG_1990.jpg', '', 5),
(18, 'IMG_1771.jpg', '', 5),
(19, '_O8A7766.jpg', '', 5),
(20, 'IMG_1961.jpg', '', 5),
(21, '_O8A8079.jpg', '', 5),
(22, '_O8A8073-2.jpg', '', 5),
(23, '_O8A8060.jpg', '', 5),
(24, '_O8A7759.jpg', '', 5),
(25, '_O8A7730-2.jpg', '', 5),
(26, '_O8A7593.jpg', '', 5),
(27, 'TSS_3644.jpg', '', 4),
(28, 'TSS_3634.jpg', '', 4),
(29, 'TSS_3618.jpg', '', 4),
(30, 'TSS_3614.jpg', '', 4),
(31, 'TSS_3608.jpg', '', 4),
(32, 'TSS_3606.jpg', '', 4),
(33, 'IMG_2760.jpg', '', 4),
(34, 'IMG_2231.jpg', '', 4),
(35, 'IMG_2229.jpg', '', 4),
(36, 'IMG_2222.jpg', '', 4),
(37, 'berlin-kadewe.jpg', '', 6),
(38, 'KaDeWe.jpg', '', 6);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `pages`
--

CREATE TABLE `pages` (
  `p_id` int(11) NOT NULL,
  `p_title` varchar(200) NOT NULL,
  `p_slug` varchar(200) NOT NULL,
  `p_content_file` text NOT NULL,
  `p_frontpage` tinyint(1) NOT NULL DEFAULT '0',
  `p_parent` int(11) DEFAULT NULL,
  `p_admin` tinyint(1) NOT NULL DEFAULT '0',
  `p_gallery` int(11) NOT NULL DEFAULT '0',
  `p_image` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `pages`
--

INSERT INTO `pages` (`p_id`, `p_title`, `p_slug`, `p_content_file`, `p_frontpage`, `p_parent`, `p_admin`, `p_gallery`, `p_image`) VALUES
(1, 'Hjem', 'Hjem', '', 1, NULL, 0, 0, ''),
(13, 'Offentlig transport i Berlin', 'offentlig_transport_i_berlin', 'Ligesom mange andre af nutidens storbyer har Berlin også god mulighed for offentlig transport. \r<br><br>U-bahnen ligger på næsten hvert gadehjørne, og mange af dem er således også handicapvenlige. Desværre er det ikke alle. Derfor er det en god idé at gøre sit hjemmearbejde inden man begiver sig ud i den berlinske undergrund. \r<br><br>Udfordringerne ved at tage U-bahn, kan være mange. De mest almindelige er niveauforskel fra perron til tog, samt manglende mulighed for at komme fra perron til gadeplan. Det vil sige manglende elevatorer. \r<br><br>Der findes et utal af applikationer og websites, som med ganske få klik viser hvilke stationer som er ”good-to-go” og hvilke som er absolut ”no-go!”. \r<br><br>Disse applikationer skal man respektere. Vi har på egen krop erfaret hvad der sker, hvis man hopper af på en station som ikke er markeret som handicapvenlighed. Det resulterede I at vi var fanget på et plateau, hvor vi hverken kunne komme frem eller tilbage. \r<br><br>En anden mulighed for offentlig transport er ved at benytte taxa. Det er dog noget dyre end de u-bahn. I hvert fald hvis man skal benytte det af flere omgange.\n<br><br>Vores erfaringer\n<br><br>Vores erfaring med den tyske undergrund er, at den fungerer fint for en person i manuel kørestol, som har en hjælper med. Her vil den største udfordring være at kunne komme ind og ud af togene. Her kan der nogen gange være behov for et lille skub – nogen gange fordi det skal gå lidt stærkt. \r<br><br>For en person i elektrisk kørestol er det en lidt anden snak. Her er en rampe i nogle tilfælde et must, da stolen ikke har så nemt ved at komme over større kanter, som en manuel kørestol har. \r<br><br>Samtidig skal man være opmærksom på at togene bumler ret meget under kørslen og at der er en voldsom acceleration og opbremsning. Det vil sige man skal have en hvis robusthed for at synes at metro er en holdbar løsning i længden. \r<br><br>Taxa i Berlin er også en mulighed, hvis man sidder i manuel kørestol og har nogle med til at hjælpe sig. Det vil også være en fordel hvis man har en hvis mobilitet, så man selv kan forflytte sig over i en taxa.\n<br><br> Det er muligt at bestille en større taxa, men så kan man risikere at komme til at sidde og vente i en længere periode. ', 0, NULL, 0, 0, 'IMG_1840.jpg'),
(16, 'Kendte seværdigheder', 'kendte_seværdigheder', 'Berlin er fyldt med mange flotte og historiske seværdigheder. Nogen vil mene at man først har været i Berlin, når man har set nogle af disse flotte bygningsværker i Berlins gader. \n<br><br>Vi har valgt nogle få ud, som vi giver en kort beskrivelse af, samtidig med vi fortæller om vores oplevelse, da vi besøgte det. Både rent kulturelt, men lige så meget når det kommer til tilgængelighed som handicappede.', 0, NULL, 0, 0, 'IMG_1986-2.jpg'),
(18, 'Brandenburger Tor', 'brandenburger_tor', 'Brandenburger Tor har i 200 år været et varetegn for Berlin og for Tyskland. Indtil 1989 var det et symbol for Tysklands deling – og siden et nationalt symbol og måske Europæisk symbol for enhed. \r<br><br>Brandenburger Tor blev bygget af Carl Gotthard Langhans i 1789-91 efter græsk forbillede. Porten var den royale entre til Berlin.\r<br><br>Porten ligger på den gamle Brandenburgerstrasse, som i direkte linje forbandt kongeslottet med sommerresidensen Carlottenburg. Porten var en del af Berlins bymur, og derfor fungerede porten i det daglige som toldsted for handlende, som ønskede at bringe deres varer til torvs inde i byen.', 0, 16, 0, 0, ''),
(19, 'Monomenterne', 'monomenterne', 'Holocaust mindesmærket er tegnet af den amerikanske arkitekt Peter Eisenman. Det stod færdigt i 2005 og dækker et område på 19.000 m2.  Mindesmærket er bygget specifikt for at mindes de jøder, som det nazistiske regime myrdede under anden verdenskrig.\r<br><br>De grå betonklodser er opsat symmetrisk, men de varierer i højde. Man kunne godt fortolke dem som værende gravsten på en kirkegård. Arkitektens hensigt med klodserne er, at de skal skabe en urolig og forvirrende atmosfære i deres enkelthed.\r<br><br>Terrænet omkring monomenterne er forholdsvis kuperet, men underlaget er fint. Så har man en god stol og eventuelt en hjælper til at give en hånd, er Holocaust monomenterne bestemt et besøg værd. Og det er gratis at besøge.', 0, 16, 0, 0, ''),
(20, 'TV Tårnet – ingen adgang for kørestolsbrugere', 'tv_tårnet_ingen_adgang_for_kørestolsbrugere', 'Berliner Fernsehturm (dansk: Berlins Fjernsynstårn) er et tv-tårn på Alexanderplatz i er et af de mest kendte arkitektursymboler i Berlin. \r<br><br>Tårnet blev opført mellem 1965 og 1969 af DDR, der også brugte billedet af det som symbol på Østberlin og DDR. Tårnet kan let ses fra byens centrum og visse forstæder i byen og er fortsat et symbol på Berlin den dag i dag.\r<br><br>Dets oprindelige højde var 365 meter, men efter installationen af en ny antenne i 1990\'erne, er højden nu 368 meter, hvilket gør det til den fjerdehøjeste fritstående konstruktion i Europa efter Ostankinotårnet i Moskva, Kiev-tv-tårnet og Radio- og tv-tårnet i Riga. \r<br><br>Midt på Fernsehturm findes en udsigtsplatform 203 meter over jordens overflade samt en roterende restaurant – 207 meter over jordens overflade. I klart vejr kan man se 42 km væk. \r<br><br>Tårnet har omkring 1 million besøgende årligt.', 0, 16, 0, 0, ''),
(21, 'Vores erfaringer', 'vores_erfaringer', 'Brandenburger Tor\r<br><br>Da Brandenburger Tor ligger inde midt i Berlins bymidte er denne helt tilgængelig. Forholdene er gode for kørestolsbrugere. Der er gode opkørsler, og belægningen er fin, nem at køre på. Eneste hindring kan være nogle mindre stykker med brosten, som især for den manuelle kørestol kan forringe oplevelsen.\r<br><br>Monomenterne\r<br><br>Ligesom ved Brandenburger Tor var forholdene her også fine. Det eneste der er til forskel er, at gangene mellem stenene kan være forholdsvis kuperet, så hvis man er i manuel kørestol, kunne det være en fordel at have en hjælper med. Hvad angår elektriske kørestole er der ingen problemer. Gangene er dejlig bredde og det er derfor nemt at komme rundt.\r<br><br>TV Tårnet\r<br><br>TV Tårnet er ”no go” for kørestolsbrugere der ikke selv er i stand til at komme op og ned fra tårnet. Dette skyldes sikkerhedsforhold, og ikke mangel på elevator, da det kræver sådan én for at kunne komme derop. \r<br><br>Det virker dog som en underlig begrundelse, da tårne som CN Tower i Toronto er bygget efter samme princip og der er der ingen problemer for kørestolsbrugere at komme op.', 0, 16, 0, 0, ''),
(22, 'Offentlige toiletter', 'offentlige_toiletter', 'Berlin gør en masse ud af at lave en masse offentlige toiletter – også for handicappede. Det gælder både på offentlige pladser og i de forskellige større shoppingcentre. \r<br><br>Sågar på metrostationer er der fine handicaptoiletter. \r<br><br>Man kan med fordel købe den såkaldte ”europa nøgle”, som giver adgang til mange handicaptoiletter i Europa, inklussiv rastepladser og offentlige toiletter i storbyerne, uden man skal henvende sig nogen steder og låne nølgen først.\r<br><br>Vores erfaringer\r<br><br>Vi har under vores besøg brugt nogle af disse toiletter, og de er rigtig fine. Det kan egentlig siges ganske klart – når de er der, er de rigtige gode. Om der så er nok, er altid et diskussionsspørgsmål. \r<br><br>Især på de større undergrundsstationer er der fint tilgængelige toiletter, hvor det er nemt at komme til. Samtidig er der altid rigtig fine toiletter i de større shoppingcentre som er i Berlin.', 0, NULL, 0, 0, ''),
(23, 'Teamet Bag', 'teamet_bag', 'Vi er to handicappede, unge mænd, som har sat os for at videreformidle vores oplevelser i forskellige storbyer, så andre kan lære af vores erfaringer og udfordringer. \r<br><br>Vi har grundet vores dagligdag i forskellige kørestole et bredt grundlag for at hjælpe og rådgive andre, inden de begiver sig rundt.', 0, NULL, 0, 0, ''),
(24, 'Frederik Dahl', 'frederik_dahl', 'Mit navn er Frederik Dahl. Jeg er 23 år og er manuelkørestolsbruger. Jeg er født med en sygdom kaldet rygmarvsbrok som bevirker at mine nerver i mine ben ikke fungerer. \r<br><br>Jeg gik i mine første 10-12 år af mit liv med gangstativ. Det har desværre medført at jeg med tiden har slidt mine knæ op, hvilket har medført jeg har måtte skifte over til kørestolen på permanent basis. \r<br><br>Min overkrop fungerer helt normalt, og jeg er derfor forholdsvis mobil af en kørestolsbruger at være.', 0, 23, 0, 0, ''),
(25, 'Oliver Nybo', 'oliver_nybo', 'Mit navn er Oliver Nybo. Jeg er 18 år og er født med spinal muskelatrofi – bedre kendt som muskelsvind. Det bevirker jeg sidder i elektriskkørestol og har brug for hjælper døgnet rundt.', 0, 23, 0, 0, ''),
(26, 'Kontakt', 'kontakt', 'På denne side har du mulighed for at kontakte teamet bag DemIstolene.\r<br><br>Ingen spørgsmål er for store, små eller mærkelige. Vi er her for at hjælpe, så tøv endelig ikke med at skrive til os via kontaktformularen nedenfor.', 0, NULL, 0, 0, ''),
(27, 'Anbefalinger', 'anbefalinger', 'Hvis man er på egen hånd, kan livet som handicappede godt være besværligt, men med ganske få hjælpemidler, kan en tur til Berlin blive meget nemmere. \r<br><br>En af de måder kan der forbedre ens tur betragteligt, er ved at søge hjælp på diverse sites og applikationer. Vi havde, inden vores besøg, fundet nogle applikationer, som vi under vores tur til Berlin har benyttet og testet. Her er en vores umiddelbare vurdering.', 0, NULL, 0, 0, ''),
(28, 'AccessBerlin', 'accessberlin', 'Dette website giver et rigtig godt overblik over hvor, og hvad man som kørestolsbruger kan opleve i Berlin - og vigtigst af alt – hvor man kan ikke kan komme rundt. \r<br><br>Der står en masse gode informationer, som er med til at gøre at turen kommer godt fra start. Siden er dog meget overfladisk med sine emner, men giver omvendt nogle gode forslag til seværdige steder, hvor det er til at komme rundt i manuel- som elektriskkørestol. \r<br><br>Denne side er ideel når turen skal planlægges, inden man ankommer.', 0, 27, 0, 0, ''),
(29, 'Wheelmap.org', 'wheelmaporg', 'Når man er ankommet til Berlin, er dette site skide godt! \r<br><br>Her finder du et kort over hvilke restauranter, butikker og seværdigheder som er handicapvenlig, så du nemmere kan planlægge din tur, eller tjekke op på ting, hvis du får impulsive ideer. \r<br><br>På sitet er det muligt at markere om man ønsker at se ”Ikke tilgængelige ting”, ”delvist tilgængelige” og ”fuldt tilgængelige”. \r<br><br>Et rigtig godt sted når man skal planlægge hvor det som kørestolsbrugere er muligt at spise.', 0, 27, 0, 0, ''),
(30, 'Berlin Subway', 'berlin_subway', 'Denne applikation er genial, hvis man skal køre undergrund i Berlin. Det er generelt! Handicappede som ikke-handicappede. \r<br><br>Her er det muligt at se skinnenettet for undergrunden, samtidig med man kan indtaste sin start- og slutdestination, og så guider applikationen én, med eventuelle togskift, til du står på din ønskede destination. \r<br><br>Som kørestolsbrugere er denne applikation også meget nyttig, da den viser hvilke stationer som har elevator.', 0, 27, 0, 0, ''),
(31, 'Broken Lifts', 'broken_lifts', 'Denne applikation er uundværlig når det gælder tilgængelighed til diverse tog i Berlins undergrund.\r<br><br>Den viser kort og godt hvilke elevatorer som ikke fungerer, så man har mulighed for at finde alternative løsninger, inden man sidder foran dem, og selv konstaterer det. \r<br><br>Der er ikke noget værre end at sidde foran en station, og konstatere at elevatoren ikke virker. Især ikke hvis man har kørt efter præcis denne station, fordi den skulle være handicapvenlig. \r<br><br>I sådan en situation er denne applikation uundværlig, så man allerede fra start kan se hvilken station man kan benytte på det ønskede tidspunkt, så man ikke kører efter noget der ikke virker. De er hurtige til at opdaterer den, når der opstår nye problemer med en elevator, så man kan sagtens regne med den.', 0, 27, 0, 0, ''),
(32, 'Parker', 'parker', 'Parker og naturområder er en god måde at slippe lidt væk fra storbyens larm og komme ud et sted hvor man føler der er frirum og plads til at trække frisk luft.\r<br><br>Vores erfaringer\r<br><br>Vi besøgte på vores tur to forskellige parker og de var begge to fint indrettet for kørestolsbrugere. Man skal dog være opmærksom på at man i manuel kørestol i visse tilfælde godt kan komme ud for at have brug for en hjælpende hånd, så en hjælper vil være en fordel. \r<br><br>Vi fik undersøgt hvordan tilgængeligheden var i forskellige parker i Berlin. Blandt andet Victoria Park. Også her kunne vi, ligesom de fleste andre steder konstatere at tilgændeligheden i bund og grund var fin, men at der på nogle punkter var ret kuperet, så en person i manuel kørestol ville få det svært uden hjælper. \r<br><br>Vi besøgte Victoria Park. En park som ligger et kort stykke fra hvor vi boede. Det er en flot park, som på grund af årstiden ikke rigtig tog sig ud som den gør om sommeren, når alle ting står i fuld flor og det lange vandfald er fyldt med vand. \r<br><br>Samtidig besøgte vi Berlin Tempelhof - en nedlagt lufthavn. Her trillede vi en lille tur, i det fine vejr, på de store, bredde landingsbaner. Dét at det er en gammel lufthavn gør, sammen med de bredde baner, at det er fuldstændig pandekagefladt, og er derfor utrolig velegnet for kørestolsbrugere, og andre ting på hjul.', 0, NULL, 0, 0, 'IMG_2057-2.jpg'),
(33, 'Shopping', 'shopping', 'Mange, især hunkøn, forbinder storby med shopping. Det er der også god mulighed for i Berlin. Også som kørestolsbrugere.\r<br><br>Vores erfaringer\r<br><br>Shopping i Berlin er som sådan intet problem. Der er selvfølgelig undtagelser, men som udgangspunkt er der ingen problemer.\r<br><br>Der findes flere forskellige shopping gader, samt større centre hvor det uden problemer er muligt at for stillet sin shoppelyst som handicappede – både som manuel- og elektriskkørestolsbruger. \r<br><br>Det samme glæder det større butikker, som Primark, Saturn og New Yorker. Her har hver enkelt butik hver deres lettilgængelige elevator. \r<br><br>Bedste handicapvenlige shoppingcenter i Berlin er KaDeWe, der med sine 380.000 vareartikler fordelt ud over et samlede areal på ca. 60.000m2, på i alt 7 etager, har med 50.000 daglige besøgende en størrelse der gør, at det som kørestolsbrugere ikke er noget problem at komme rundt. \r<br><br>Der er tilmed fine handicaptoiletter på en del af etagerne. \r<br><br>Den største udfordring vi stødte på under vores tur til Berlin, var mulighed for parkering. Vi var af sted i en større handicapbil, hvilket ikke var en fordel. Der var handicapparkering flere steder, men enten var de optaget af mindre biler, som ikke havde handicapskilt i forruden, eller også var de så små at der ikke var plads til vi kunne holde der. Vi oplevede også at handicappladserne var i et p-hus hvor vores bil ikke kunne komme ind.', 0, NULL, 0, 0, 'KaDeWe.jpg'),
(34, 'Øjenberetninger', 'Øjenberetninger', 'Teamet bag DemIstolene har brugt en uge i Berlin. \r<br><br>På denne side vil du kunne følge med i deres beretninger, når de giver gode råd og anbefalinger, ud fra deres erfaringer i Berlins gader og undergrund. \r<br><br>Beretningen er skrevet ud fra de oplevelser de to kørestolsbrugere har haft på deres studietur med Medieskolerne i Viborg.', 0, NULL, 0, 0, ''),
(35, 'Mandag', 'mandag', 'Mandag blev ikke brugt på ret meget andet end transport. Vi havde i vores gruppe to forskellige måder at ankomme til Berlin på. \r<br><br>Frederik tog flyet via Billund, mens Oliver kørte vejen fra Ikast til Berlin i hans egen bil. Resten af skolen kørte i bus. \r<br><br>Flyveturen startede ud med at blive halvanden time forsinket, da flyet fra Berlin var forsinket. \r<br><br>Fordi Frederik var der alliigevel så mange timer før de andre, at han havde mulighed for at tjekke Berlins aftenliv ud – primært omkring Alexanderplatz, samt tage en tur med u-bahn’en. Hvilket fungerede helt fint, så længe der var en hjælper med.', 0, 34, 0, 0, ''),
(36, 'Tirsdag', 'tirsdag', 'Tirsdag var dagens mission at køre undergrund. Vi skulle finde ud af hvor handicapvenlig den berlinske var. Både set ud fra et synspunkt i manuel kørestol, men også set fra en elektriskkørestol.\r<br><br>Oliver havde aldrig prøvet at køre i den tyske U-bahn før, så vi skulle finde ud af om det var muligt.\r<br><br>Frederik havde allerede fra hans tur aftenen forinden været opmærksom på nogle steder, med nogle høje kanter, som kunne give problemer. De havde derfor valgt at medbringe én af Olivers ramper, så de var sikre på de i hvert fald kunne komme ind i toget. \r<br><br>Med rampen i brug fungerede turen ind i toget fint, selvom det krævede en smule planlægning inden, da man ikke har ret meget tid at arbejde med inden dørene lukker og toget er på vej videre. Og inden man selv kan komme ind i toget, skal man som regel vente på en menneskemængde, som skal af. \r<br><br>Senere fandt de ud af at det var muligt at få togføren til at lægge en rampe, hvis man gjorde opmærksom på man var der. En ting drengene synes, de godt kunne gøre lidt bedre opmærksom på. \r<br><br>De oplevede i øvrigt også at en togfører måtte stoppe sit tog på en station for at løbe ud og slikke en skraldespand som der var gået ild i. – Den tyske undergrund er bestemt ikke kedelig.  \r<br><br>En anden ting, de brugte en del tid på denne dag var at finde elevatore som førte det rigtige sted hen. Det er nemlig ikke altid lige nemt at finde en elevator på de tyske u-bahn stationer. \r<br><br>Samtidig med det, skal man som regel køre i et par stykker på de større stationer, da samme elevator som en selvfølge ikke fører én ret langt op eller ned. Typisk kun en etage eller to.', 0, 34, 0, 0, ''),
(37, 'Onsdag', 'onsdag', 'Onsdag var den kulturelle dag på turen. Her skulle de se Checkpoint Charlie, Holocaust monomentet og Brandenburger Tor, og samtidig tage en samlet vurdering af tilgængeligheden i Berlins gader. \r<br><br>Grundet den meget metrokørsel dagen forinden havde de i dag valgt at begive os ud i Berlins gader i Olivers bil. Så var der samtidig mulighed for at tjekke tilgængeligden til handicapparkeringer, i Berlins centrum. \r<br><br>GPS’en blev sat til Checkpoint Charlie, hvilket de fandt hen til uden de store køer. Da der som sådan ikke rigtig er noget at kigge på, ved Checkpoint Charlie, valgte de at ”køre over græsen” i bil, uden at hoppe ud og kigge næmere på det. \r<br><br>Næste stop var Holocaust monomentet. Her fandt de efter at have kørt rundt omkring det nogle gange, endelig en parkeringsplads, hvor deres store handicapbil kunne holde, og hvor det samtidig var muligt at komme ud af bilen. \r<br><br>Vejret var, ligesom alle de andre dage, rigtig lækkert. Sol fra en skyfri himmel, og ingen vind. Men på trods af de optimale vejrforhold, var det stadig en fornøjelse af de køligere, da temperaturen hele turen lå under frysepunktet. \r<br><br>Da Demistolene havde set det valgte de at tage den ”til fods” videre til Brandenburger Tor, da det ligger ret tæt på, og fordi vi ikke turde flytte bilen, da vi endelig havde fundet en god parkeringsplads. \r<br><br>Brandenburger Tor, er jo som sådan bare et større bygningsværk, så der var der ikke noget handicapmæssigt at forholde sig til, men det var nemt at komme derind og køre omkring den.  \r<br><br>For at sikre vi kunne holde varmen var der arrangeret at de, klokken 14 skulle mødes med en del andre fra klassen på den store Fassbender & Rausch chokoladebutik, hvor sukkerdepoterne blev holdt ved lige. Her var handicapforholdene, trods de ældre bygninger helt i top, med store handicap toiletter\r<br><br>Men det var ikke nok chokolade for i dag – de var også en smut forbi den store Ritter Sport butik, hvor der også blev handlet lidt. Her havde restauranten ikke åbnet, men havde den haft det havde vi, som kørestolbrugere haft problemer, da den lå på første sal og uden elevator. Vi måtte derfor nøjes at kigge i shoppen, som lå på stueplan. \r<br><br>Aftnen blev brugt på at samle noter og begynde at kode lidt.', 0, 34, 0, 0, ''),
(38, 'Torsdag', 'torsdag', 'Den sidste hele dage blev brugt på det man kan kalde “fri leg”. \r<br><br>Vi havde undersøgt de emner vi skulle i løbet af de foregående dage, så denne dag blev bare brugt på at lave lidt opfølgende reseach. \r<br><br>De besluttede blandt andet at ville undersøge tilgængelighed i Parker. Det havde de ikke planlagt hjemmefra, men de synes det passede så godt fordi der var andre der havde omkring parker og fordi det var så godt vejr. \r<br><br>De fik undersøgt hvordan tilgængeligheden var i forskellige parker i Berlin. Blandt andet Victoria Park. Også her kunne de, ligesom de fleste andre steder konstatere at tilgændeligheden i bund og grund var fin, men at der på nogle punkter var ret kuperet, så en person i manuel kørestol ville få det svært uden hjælper. \r<br><br>Samtidig besøgte de Berlin Tempelhof. En nedlagt lufthavn. Her trillede de en lille tur, i det fine vejr, på de store, bredde landingsbaner. Dét at det er en gammel lufthavn gør, sammen med de bredde baner også at det er fuldstændig pandekagefladt, og er derfor utrolig velegnet for kørestolsbrugere, og andre ting på hjul.\r<br><br>Ligesom aftnen forinden blev tiden denne aften også brugt på at kode lidt og skrive data ned. Ellers blev den bare brugt på den sidste hygge inden turen gik hjem morgenen efter.', 0, 34, 0, 0, ''),
(39, 'Samarbejde', 'samarbejde', 'Vi har i vores gruppe haft et rigtig godt samarbejde. \r<br><br>Vi har været gode til at fordele opgaverne, så vores forskellige styrker blev udnyttet, samtidig med vi har udfordret os selv på nye punkter, og har kunne give hinanden god feedback i vores arbejde. \r<br><br>Det skal også nævnes at grundet emnet, som rigtig har interesseret os, har vi muligvis også arbejdet endnu mere intensivt, end hvis det var et emne som slet ikke interesserede os. I forhold til emnet, har vi også været gode til at supplere hinanden, eftersom vi ser tingene fra lidt forskellige perspektiver. \r<br><br>Vi kunne sagtens se os som en gruppe en anden gang.', 0, NULL, 0, 0, ''),
(43, 'Galleri', 'galleri', '', 0, 13, 0, 2, ''),
(44, 'Galleri', 'galleri', '', 0, 16, 0, 3, ''),
(45, 'Galleri', 'galleri', '', 0, 32, 0, 4, ''),
(46, 'Galleri', 'galleri', '', 0, 34, 0, 5, ''),
(47, 'Galleri', 'galleri', '', 0, 33, 0, 6, '');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_username` varchar(150) NOT NULL,
  `u_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`g_id`);

--
-- Indeks for tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`i_id`);

--
-- Indeks for tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`p_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tilføj AUTO_INCREMENT i tabel `images`
--
ALTER TABLE `images`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Tilføj AUTO_INCREMENT i tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
