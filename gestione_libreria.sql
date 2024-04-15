-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestione_libreria`
--

-- --------------------------------------------------------

--
-- Table structure for table `libri`
--

CREATE TABLE `libri` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(150) NOT NULL,
  `autore` varchar(100) NOT NULL,
  `anno_pubblicazione` int(11) NOT NULL,
  `genere` varchar(100) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `descrizione` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `libri`
--

INSERT INTO `libri` (`id`, `titolo`, `autore`, `anno_pubblicazione`, `genere`, `image`, `descrizione`) VALUES
(1, 'Harry Potter e la pietra filosofale', 'J. K. Rowling', 1997, 'Romanzo', 'https://www.libraccio.it/images/9788831003445_0_500_0_75.jpg', 'Harry Potter, vessato e umiliato per tutta la vita dai suoi zii, scopre a undici anni di essere speciale: Ã¨ un mago. I suoi genitori, erano due maghi molto famosi e rispettati, che mori-rono nel tentativo di sconfiggere Voldemort, un potentissimo mago malvagio che stava di-struggendo il mondo della magia.'),
(4, 'Harry Potter e la camera dei segreti', 'J. K. Rowling', 1998, 'Romanzo', 'https://www.lafeltrinelli.it/images/9788831003391_0_536_0_75.jpg', 'Harry Potter Ã¨ ormai celebre: durante il primo anno alla Scuola di Magia e Stregoneria di Hogwarts ha sconfitto il terribile Voldemort, vendicando la morte dei suoi genitori e coprendosi di gloria. Ma una spaventosa minaccia incombe sulla scuola: un incantesimo che colpisce i compagni di Harry, uno dopo lâ€™altro, e che sembra legato a un antico mistero racchiuso nella tenebrosa Camera dei Segreti.'),
(12, 'Harry Potter e il prigioniero di Azkaban', 'J. K. Rowling', 1999, 'Romanzo', 'https://www.ibs.it/images/9788831003407_0_536_0_75.jpg', 'Una terribile minaccia incombe sulla Scuola di Magia e Stregoneria di Hogwarts. Sirius Black, il famigerato assassino, Ã¨ evaso dalla prigione di Azkaban. Ãˆ in caccia e la sua preda Ã¨ proprio a Hogwarts, dove Harry e i suoi amici stanno per cominciare il loro terzo anno.'),
(13, 'Harry Potter e il calice di fuoco', 'J. K. Rowling', 2000, 'Romanzo', 'https://www.lafeltrinelli.it/images/9788831017350_0_536_0_75.jpg', 'Ãˆ un momento cruciale nella vita di Harry: ormai Ã¨ un mago adolescente, vuole andarsene dalla casa dei pestiferi Dursley, vuole sognare la Cercatrice di Corvonero per cui ha una cotta tremenda... E poi vuole scoprire quali sono i grandiosi eventi che si terranno a Hogwarts e che riguarderanno altre due scuole di magia e una grande competizione che non si svolge da cento anni.'),
(14, 'Harry Potter e l\'Ordine della Fenice', 'J. K. Rowling', 2003, 'Romanzo', 'https://www.salani.it/libri/harry-potter-e-lordine-della-fenice-anniversario-9788831017367/image_preview', 'Lord Voldemort Ã¨ tornato. Che cosa succederÃ  ora che il Signore Oscuro Ã¨ di nuovo in pieno possesso dei suoi terrificanti poteri? Quanta morte e distruzione seminerÃ  nel tentativo di riprendere il dominio del mondo? Sono le stesse domande che si pone Harry Potter, disperatamente segregato â€“ come tutte le estati â€“ nella casa dei suoi zii babbani, lontano dal mondo magico che gli appartiene. Ma qualcosa Ã¨ cambiato anche in lui.'),
(15, 'Harry Potter e il Principe Mezzosangue', 'J. K. Rowling', 2005, 'Romanzo', 'https://www.salani.it/libri/harry-potter-e-il-principe-mezzosangue-9788831017374/image_preview', 'Harry Potter Ã¨ sconvolto, solo e preoccupato. Il suo amato padrino Sirius Black Ã¨ morto, e le parole di Albus Silente sulla profezia gli confermano che lo scontro con Lord Voldemort Ã¨ ormai inevitabile. Niente Ã¨ piÃ¹ come prima: lâ€™ultimo legame con la sua famiglia Ã¨ troncato, perfino Hogwarts non Ã¨ piÃ¹ la dimora accogliente dei primi anni, mentre Voldemort Ã¨ piÃ¹ forte, crudele e disumano che mai. Harry stesso sa di essere cambiato.'),
(16, 'Harry Potter e i doni della morte', 'J. K. Rowling', 2007, 'Romanzo', 'https://www.salani.it/libri/harry-potter-e-i-doni-della-morte-anniversario-25-9788831017381/image_preview', 'Â«Mi apro alla chiusuraÂ»: Ã¨ uno dei tanti enigmi lasciati da Silente con cui Harry Potter deve confrontarsi in questo ultimo, settimo libro. E anche la saga stessa, nel giungere alla propria fine, si apre a sorpresa su nuovi mondi, nel passato e nel futuro: getta la luce della meraviglia su dettagli, personaggi ed eventi che pensavamo di conoscere giÃ , rivelandone segreti e significati profondi.'),
(17, 'Harry Potter e la maledizione dell\'erede', 'J. K. Rowling, John Tiffany, Jack Thorne', 2017, 'Romanzo', 'https://www.salani.it/libri/harry-potter-e-la-maledizione-dell2019erede-9788893818407/image_preview', 'Ãˆ sempre stato difficile essere Harry Potter e non Ã¨ molto piÃ¹ facile ora, da impiegato al Ministero della Magia, oberato di lavoro, marito e padre di tre figli in etÃ  scolare.\r\n\r\nMentre Harry Potter fa i conti con un passato che si rifiuta di rimanere tale, Albus, suo secondogenito, deve lottare con il peso di unÊ¼ereditÃ  famigliare che non ha mai voluto. Quando passato e presente si fondono in unâ€™oscura minaccia, padre e figlio apprendono una scomoda veritÃ : il pericolo proviene a volt'),
(18, 'Shadowhunters â€“ CittÃ  di ossa', 'Cassandra Clare', 2007, 'Romanzo', 'https://www.ibs.it/images/9788804716624_0_536_0_75.jpg', 'Shadowhunters - CittÃ  di ossa Ã¨ un romanzo fantasy di Cassandra Clare, pubblicato il 27 marzo 2007 negli Stati Uniti e il 6 novembre 2007 in italiano. Ãˆ il primo capitolo della saga Shadowhunters. '),
(19, 'Shadowhunters - CittÃ  di cenere', 'Cassandra Clare', 2008, 'Romanzo', 'https://m.media-amazon.com/images/I/719d4QTHZkL._AC_UF1000,1000_QL80_.jpg', 'The Mortal Instrument: Shadowhunters - CittÃ  di cenere Ã¨ un romanzo fantasy di Cassandra Clare, pubblicato il 25 marzo 2008 negli Stati Uniti e il 9 settembre 2008 in italiano. Ãˆ il secondo capitolo della saga Shadowhunters.'),
(20, 'Shadowhunters - CittÃ  di vetro', 'Cassandra Clare', 2009, 'Romanzo', 'https://m.media-amazon.com/images/I/71Gzg+RXbAL._AC_UF1000,1000_QL80_.jpg', 'Clary scopre, grazie a Madeleine, che l\'unica possibilitÃ  di rompere l\'incantesimo che tiene sua madre in coma Ã¨ quella di recarsi ad Idris, terra nativa di tutti gli Shadowhunters e sede di alcuni Nascosti. LÃ¬, infatti, risiede il potente stregone Ragnor Fell, che sembra essere in grado di risolvere il suo problema. Jace, perÃ², tenta di convincere in tutti i modi la sorella a non andare ad Alicante, capitale di Idris, ritenendola una cittÃ  poco sicura per lei.'),
(21, 'Shadowhunters : CittÃ  degli angeli caduti', 'Cassandra Clare', 2011, 'Romanzo', 'https://m.media-amazon.com/images/I/518HA80RU9L.jpg', 'Clary Ã¨ tornata a New York dopo aver vinto, assieme agli altri Shadowhunters, la battaglia contro Valentine (chiamata Guerra Mortale). Dopo aver scoperto che Jace non Ã¨ suo fratello, ora puÃ² dire al mondo intero che Ã¨ il suo ragazzo, ma tutto ha un prezzo. Infatti, nel Mondo Invisibile, stanno sparendo misteriosamente alcuni Cacciatori e di conseguenza i rapporti tra Shadowhunters e Nascosti si stanno alterando, perchÃ¨ tutti i cadaveri sono stati rinvenuti in punti della cittÃ  di competenz'),
(22, 'Shadowhunters â€“ CittÃ  delle anime perdute', 'Cassandra Clare', 2012, 'Romanzo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRos7tqASPPydCJRfSjuTg6e-UCOTX9h3jBsvAMA-ENIw&s', 'Jace Ã¨ sparito, cosÃ¬ comâ€™Ã¨ scomparso misteriosamente anche il corpo del fratello di Clary, ovvero il figlio malvagio di Valentine, Sebastian. Lilith Ã¨ stata sconfitta alla fine del precedente libro, ma dei due ragazzi non vi Ã¨ traccia.\r\n\r\nDopo diverse ore di testimonianza difronte al Conclave, che non sta facendo alcun passo avanti nelle ricerche di Jace, Clary, disperata per quanto sta accadendo, si sfoga prima con Isabelle e poi con Alec, che provano gli stessi sentimenti che prova lei.'),
(23, 'Shadowhunters â€“ CittÃ  del fuoco celeste', 'Cassandra Clare', 2014, 'Romanzo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLeQxtpulTKEujtIF8LM9yr3XM8i3wQS117gkZbhn-JA&s', 'Sebastian ed i suoi alleati attaccano a sorpresa l\'Istituto di Los Angeles (gestito dalla famiglia Blackthorn), dove si trova la piccola Emma Carstairs, in quanto i suoi genitori sono andati in missione e l\'hanno lasciata lÃ¬ assieme alla famiglia del suo migliore amico, Julian Blackthorn.\r\nSebastian trasforma in Ottenebrati tutti gli abitanti dell\'Istituto, compreso il padre dei giovani Blackthorn, poi rapisce Mark, il maggiore tra i fratelli.'),
(24, 'Fallen', 'Lauren Kate', 2009, 'Fantasy', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM20ZwS0_69qdLEbTkALV6qYV9gGLboBsQeUtgJ4MwsA&s', 'In seguito a un tragico e misterioso incidente, Lucinda Ã¨ stata rinchiusa a Sword&Cross, un istituto a metÃ  fra il collegio e il riformatorio. Nell\'incidente un suo amico Ã¨ morto. Lei non ricorda molto di quella terribile notte, ma la sua ricostruzione dei fatti non convince la polizia. La vita nella nuova scuola Ã¨ difficile: il senso di colpa non le lascia respiro, proprio come le telecamere che registrano ogni singolo istante della sua giornata. Tutti gli altri ragazzi, con cui Ã¨ piÃ¹ fac'),
(25, 'Unforgiven', 'Lauren Kate', 2015, 'Fantasy', 'https://www.rizzolilibri.it/content/uploads/2017/01/978881709296HIG.webp?x29851', 'Sono trascorsi secoli da quando lâ€™angelo caduto Cam ha detto addio a Lilith, strappandole il cuore, ma ancora non riesce a dimenticarla. Invidioso dellâ€™amore perfetto di Daniel e Lucinda, decide di ritrovarla, ovunque sia. CosÃ¬ stringe un patto con Lucifero: ha quindici giorni per riconquistare lâ€™unica ragazza che abbia mai amato davvero. Se ci riuscirÃ , potranno vivere insieme, liberi; ma se non dovesse farcela, Cam rimarrÃ  nellâ€™Inferno per sempre, dove lo aspetta un posto speciale. '),
(26, 'Rapture', 'Lauren Kate', 2017, 'Fantasy', 'https://www.rizzolilibri.it/content/uploads/2017/01/978881709395HIG.webp?x29851', 'Luce e il suo grande amore, lâ€™angelo caduto Daniel, sono a un passo dalla salvezza. O dallâ€™abisso. Tutto dipende da Lucifero, che vuole cancellare la storia e riscriverla per avere il mondo in pugno. Un modo per impedirglielo ci sarebbe: occorre riunire tre reliquie che si trovano a Venezia, Vienna e Avignone. In questa strenua impresa Luce e Daniel non sono soli. Al loro fianco hanno gli amici di sempre, gli angeli Roland, Cam, Gabbe, Arianne, oltre ai Nephilim, nati dallâ€™unione di un ang'),
(27, 'Fallen in Love', 'Lauren Kate', 2012, 'Fantasy', 'https://www.rizzolilibri.it/content/uploads/2012/02/978881705654HIG.webp?x29851', 'Viaggiando nel tempo e nello spazio, comâ€™Ã¨ abitudine degli angeli, Shelby e Miles si ritrovano in una cittadina medioevale inglese alla vigilia della Fiera di San Valentino: una rustica festa cortese che con danze e doni onora le ragioni del cuore. Ma come tutti sanno non sempre amore e felicitÃ  si danno la mano: lâ€™umile cavaliere Roland si strugge dâ€™amore per la nobile Rosaline; Arriane non sa darsi pace da quando la sua Tess Ã¨ tornata per sempre tra le tenebre di Lucifero. E per Luce '),
(28, 'Passion', 'Lauren Kate', 2011, 'Fantasy', 'https://www.rizzolilibri.it/content/uploads/2012/01/978885862346HIG.webp?x29851', 'Maledetti da Inferno e Paradiso, Luce e Daniel dovranno viaggiare nel tempo in una corsa disperata verso la salvezza. Una passione allâ€™ultimo respiro, dolce come una favola, avvincente come un thriller.'),
(29, 'Torment', 'Lauren Kate', 2017, 'Fantasy', 'https://www.rizzolilibri.it/content/uploads/2017/01/978881709393HIG.webp?x29851', 'Quando Daniel apre le ali e si allontana nel cielo, Luce si sente smarrita. RimarrÃ  in un collegio della California per chissÃ  quanto tempo, a mille miglia da casa, senza di lui. Ãˆ questo il dolore piÃ¹ grande: perchÃ© lui Ã¨ il suo amore da sempre, lâ€™angelo caduto che dÃ  un senso alla sua vita. Luce stenta a capire quello che succede. A lei, a loro, al mondo. Infuria una guerra tra potenze celesti e infernali, ombre minacciose la incalzano. E poi ci sono le insidie del cuore: lâ€™incontro'),
(30, 'Percy Jackson e gli dei dell\'Olimpo: il ladro di fulmini', ' Rick Riordan', 2005, 'Fantasy', 'https://www.lafeltrinelli.it/images/9788804717447_0_536_0_75.jpg', 'Perseus Jackson, detto Percy, Ã¨ un ragazzo newyorkese con molti problemi sociali e personali: soffre di disturbi dell\'attenzione, Ã¨ iperattivo e dislessico, il chÃ© non lo aiuta affatto con le materie scolastiche; vive con sua madre Sally in un piccolo appartamento nell\'Upper East Side. Insieme a loro vive anche uno sfaccendato, puzzolente e maleducato uomo che Ã¨ il suo patrigno di nome Gabe, e non ha mai conosciuto il suo padre biologico. L\'unico suo amico, che lo ha sempre seguito, Ã¨ Grove'),
(31, 'Il mare dei mostri. Percy Jackson e gli dei dell\'Olimpo', ' Rick Riordan', 2006, 'Fantasy', 'https://m.media-amazon.com/images/I/81+5MXnkXjL._SY385_.jpg', 'La vita di un semidio a New York non Ã¨ sempre facile, e quella di Percy Jackson Ã¨ diventata una vera impresa da quando ha scoperto di essere figlio di Poseidone e deve trascorrere tutte le estati al Campo Mezzosangue, insieme ai suoi simili. Ma ora il campo Ã¨ in grave pericolo: l\'albero magico che lo protegge Ã¨ stato avvelenato e non riesce piÃ¹ a difenderlo dalle invasioni dei mostri. '),
(32, 'La maledizione del titano. Percy Jackson e gli dei dell\'Olimpo (Vol. 3) ', ' Rick Riordan', 2008, 'Fantasy', 'https://m.media-amazon.com/images/I/71goIXXUkgL._SY385_.jpg', 'Una nuova pericolosa impresa attende Percy Jackson: insieme alle compagne Talia e Annabeth deve introdursi in una scuola per portare al Campo Mezzosangue Nico e Bianca, due potentissimi semidei, eludendo la sorveglianza del vicepreside. Ma sotto le spoglie dell\'aguzzino si nasconde un mostruoso emissario del perfido Crono, che rapisce Annabeth.'),
(33, 'La battaglia del labirinto. Percy Jackson e gli dei dell\'Olimpo (Vol. 4)', ' Rick Riordan', 2015, 'Fantasy', 'https://m.media-amazon.com/images/I/81UK-UfplwL._SY385_.jpg', 'La guerra tra gli dei dell\'Olimpo e i Titani Ã¨ alle porte, e ancora una volta il Campo Mezzosangue Ã¨ in pericolo: Luke e il suo esercito sono a un passo dall\'invasione. Per difendersi, Percy, Annabeth e Grover devono addentrarsi nel Labirinto di Dedalo, che forse nasconde una via d\'accesso al Campo.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `libri`
--
ALTER TABLE `libri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
