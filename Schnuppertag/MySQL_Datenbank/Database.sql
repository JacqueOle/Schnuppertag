CREATE DATABASE Stellanzeige;

Use Stellanzeige;


-- =============== CITY =======================
CREATE TABLE City(
City_ID INT(10) AUTO_INCREMENT PRIMARY KEY,
StrassenName VARCHAR(25) NOT NULL,
StrassenNummer VARCHAR(10) NOT NULL,
PLZ INT(10) NOT NULL,
CityName VARCHAR(15) NOT NULL,
Land VARCHAR(15) NOT NULL
);

-- (City_ID, Land, CityName, StrassenName, StrassenNummer, PLZ)
INSERT INTO City VALUES
(1, 'Deutschland', 'Berlin', 'Budapester Str.', 31 , '10787'),
-- =========================================================================================================================================================================================
(2, 'Deutschland', 'Berlin', 'Berliner Straße', '112-115', '10713'),
-- =========================================================================================================================================================================================
(3, 'Deutschland', 'Berlin', 'Arkonastraße', '45-49', '13189'); 
-- ========================================================================== END ==========================================================================================================


-- =============== COMPANY =======================
CREATE TABLE Company(
Company_ID INT(10) AUTO_INCREMENT PRIMARY KEY,
CompanyName VARCHAR(15) NOT NULL,
Anzeige TEXT,
Telefon VARCHAR(20) NOT NULL,
Web VARCHAR(50) NOT NULL,

FOREIGN KEY(City_ID) REFERENCES City(City_ID)
);

-- (Company_ID, CompanyName, Anzeige, Telefon, Web, City_ID, Category_ID)
INSERT INTO Company VALUES
(1, 'Funk - Internationaler Versicherungsmakler und Risk Consultant', 
'Account Manager (m/w/d) Akquisition und Betreuung für unseren Bereich Kreditversicherungen in Vollzeit

Sei einer der ersten Bewerber
Berlin
Feste Anstellung
Vollzeit, Home Office möglich

    Erschienen: vor 7 Stunden

Starten Sie durch mit Funk!

Ob Industrie, Handel, Dienstleistung, Heilwesen oder Immobilienwirtschaft – unsere Kunden zählen in ihren Märkten zu den jeweils führenden Vertretern. Seit über 140 Jahren begegnen wir hohen Ansprüchen mit ebenso hoher Qualifikation. Als größter inhabergeführter internationaler Versicherungsmakler und Risk Consultant beraten wir Unternehmen und bieten Ihnen die bestmöglichen Versicherungslösungen für Ihre Risiken. Wir sind sowohl für unsere Kunden ein verlässlicher Partner als auch für unsere Mitarbeiterinnen und Mitarbeiter ein krisenfester Arbeitgeber.

Wir suchen Charakterköpfe, die mit Herzblut, Geschick und Begeisterung mit uns neue Wege gehen und unseren Kunden die bestmögliche Lösung bieten - maßgeschneidert wie nachhaltig.

Bei Funk steht das Miteinander im Vordergrund!  Gemeinsam den Herausforderungen begegnen, innovativ und motiviert in eine sichere  Zukunft blicken.

Wir wachsen weiter – mit Ihnen! Willkommen bei Funk
Ihre neue Tätigkeit

    Akquisition, Beratung und Betreuung von nationalen und internationalen Mandanten
    Eigenständige Verhandlung mit Versicherern
    Projektarbeit unter anderem zur Weiterentwicklung unserer Dienstleistung
    Analyse von Unternehmens-, Branchen- und Länderinformationen
    Erstellung und Aktualisierung von Präsentationen, Fact Sheets sowie sonstigen Unterlagen

Das zeichnet Sie aus

    Abgeschlossene Berufsausbildung zum Kaufmann für Versicherungen und Finanen (m/w/d) oder ein abgeschlossenes BWL-/VWL- oder Jura-Studium
    Mehrjährige Berufserfahrung in vergleichbarer Position bei einem Versicherungs-/Factoringunternehmen und/oder Makler
    Umfassende und vertiefte Kenntnisse in den Bereichen Kreditversicherung, Forderungsfinanzierung, Kaution und idealerweise internationaler Programme
    Hervorragende analytische Fähigkeiten
    Sehr gutes schriftliches und mündliches Ausdrucksvermögen
    Verhandlungssichere Englischkenntnisse in Wort und Schrift
    Versiert im Umgang mit MS Office-Anwendungen
    Hohe Leistungsbereitschaft, Teamfähigkeit und Mobilität

Unsere Benefits für Sie

    Treten Sie in ein inspirierendes Arbeitsumfeld im Herzen der Stadt (HH, BE) ein, welches von familiärer Tradition geprägt ist, und in dem Sie als Mitarbeiter*in im Mittelpunkt stehen
    Sind Sie ideenreich? Wir bieten Ihnen größtmöglichen Gestaltungsspielraum in einem international erfolgreichen, organisch wachsenden und zukunftsorientierten Unternehmen. Werden Sie Teil unserer Erfolgsgeschichte
    Dank unseres modernen Arbeitszeitmodells gelingt es Ihnen mühelos, Beruf und Privatleben in Einklang zu bringen, sei es durch flexible Arbeitszeiten und Home-Office
    Nutzen Sie vielfältige interne und externe Weiterbildungsmöglichkeiten, um sich zukunftsorientiert und zielgerichtet weiterzuentwickeln. Wir unterstützen Sie dabei gerne!
    Selbstverständlich honorieren wir Ihre wertvolle Unterstützung angemessen, inklusive 13. Gehalt, Urlaubsgeld, Fahrtkostenzuschuss und weitere attraktive Zusatzleistungen
    Ihr persönlicher Lieblings-Benefit ist nicht dabei?', 
    
	'+4915689562321', 'https://www.funk-gruppe.de/de/karriere/benefits-von-funk', 1),
-- =========================================================================================================================================================================================
(2, 'IT-Dienstleistungszentrum Berlin (ITDZ Berlin)', 
'Redakteur*in Interne Unternehmenskommunikation / Kommunikationsexpert*in

Berlin
Feste Anstellung
Vollzeit, Teilzeit, Home Office möglich

    Erschienen: vor 9 Stunden

Um die Vorgaben aus dem E-Government-Gesetz des Landes Berlin umzusetzen, wird das ITDZ Berlin weiter stark wachsen und bietet vielfältige Aufgaben in unterschiedlichsten Unternehmensbereichen. Sie suchen eine spannende Arbeit mit positivem gesellschaftlichem Impact? Unterstützen Sie uns und lassen Sie uns gemeinsam daran arbeiten die Grundlage für eine moderne und zukunftsfähige Berliner Verwaltung zu schaffen und die Digitalisierung voranzutreiben – wir brauchen Sie, werden Sie Teil unseres Teams!

Für die Abteilung Kommunikation (KI) suchen wir ab sofort tatkräftige Unterstützung: 
Redakteur*in Interne Unternehmenskommunikation / Kommunikationsexpert*in
(Entgeltgruppe 12 TV-L)
Diese spannenden Aufgaben erwarten Sie bei uns

    Redaktionsplanung, Recherche und Erstellung von redaktionellen Inhalten für das Intranet sowie Inhaltspflege
    Kommunikationsberatung und Qualitätssicherung der Beiträge anderer Abteilungen und Fachbereiche des ITDZ Berlin
    Betreuung und Weiterentwicklung des Intranets, auch in Zusammenarbeit mit dem technisch zuständigen Fachbereich
    Umsetzung und Weiterentwicklung der internen Kommunikationsstrategie und Entwicklung neuer Formate für die interne Kommunikation
    Planung und Umsetzung des Monitorings und der Analyse von KPIs zur kontinuierlichen Optimierung und Weiterentwicklung der internen Kommunikationsmaßnahmen
    Unterstützung bei Planung und Umsetzung der Change- und Führungskräfte-Kommunikation
    Kanalübergreifende Zusammenarbeit mit den anderen Redakteur/innen der Unternehmenskommunikation im Newsroom
    Planung, Durchführung und Weiterentwicklung von Formaten der internen Live-Kommunikation, wie Town Hall Meetings o. Ä., sowie Mitarbeitendenveranstaltungen, wie Sommer- und Winterfesten

Das bringen Sie mit

Unabdingbar für die Wahrnehmung der Aufgaben sind:

    Ein abgeschlossenes Fachhochschulstudium (Bachelor) im Bereich Journalismus, Kommunikations-, Medien-, Geistes-, Sprachwissenschaften oder in einem vergleichbaren Studiengang oder eine vergleichbare Qualifikation
    Berufserfahrung im Bereich Kommunikation eines Unternehmens, einer Behörde oder einer Agentur sowie nachgewiesene redaktionelle Erfahrung
    Kenntnisse und Erfahrung im Umgang mit Content Management Systemen (zum Beispiel SharePoint, Wordpress, Drupal o.ä.)

Weiterhin sind für die Aufgabenwahrnehmung von Vorteil:

    Gutes technisches Verständnis und die Fähigkeit sich schnell in neue Tools einzuarbeiten 
    Versierter Umgang mit den gängigen MS-Office-Programmen
    Sehr gute Kenntnisse der deutschen Sprache in Wort und Schrift sowie eine hervorragende Ausdrucksfähigkeit
    Bereitschaft, sich in neue Themen einzuarbeiten und kreative Lösungen voranzutreiben
    Erfahrung in der Erstellung und Ausspielung von Inhalten für unterschiedliche Zielgruppen
    Sichere und eigenständige Erstellung von unterschiedlichen Text- und Bewegtbildformaten
    Grundkenntnisse in Bildbearbeitungsprogrammen wie Adobe Photoshop wünschenswert
    Strukturierte Arbeitsweise, Zuverlässigkeit, ausgeprägte Teamfähigkeit und Serviceorientierung sowie sehr gute Kommunikationsfähigkeit
    Sie haben Freude am Vermitteln relevanter Unternehmensinhalte an die Mitarbeitenden und ein hohes Interesse daran, durch Ihre Arbeit zu einer positiven Unternehmenskultur beizutragen

Gründe, die für das ITDZ Berlin sprechen

Agile Teamarbeit
Digitalisierung geht nur gemeinsam. Wir legen Wert auf eine lebendige agile Teamarbeit und eine zugewandte Führungskultur und führen Teamevents durch. Sie bekommen zur Einarbeitung eine Mentorin/einen Mentor aus dem agilen Team an Ihre Seite. 

Zukunftssicherheit
Eine sichere Beschäftigung in vielseitiger und verantwortungsvoller Position mit spannenden und abwechslungsreichen Aufgaben.

Work-Life-Balance
30 Tage Erholungsurlaub, freie Tage am 24.12. und 31.12., flexible Arbeitszeitgestaltung, Ausgleich von Mehrarbeit möglich, individuelle Teilzeitmodelle, Möglichkeit zur mobilen Arbeit sowie betriebliche Kinderbetreuung.

Entwicklungsperspektiven
Ein vielfältiges Fortbildungsangebot zur umfassenden Einarbeitung und Weiterentwicklung Ihrer Kompetenzen und Fähigkeiten. 

Gesundheitsmanagement
Wir bleiben in Bewegung durch ein betriebliches Gesundheitsmanagement mit Betriebssportgruppen, Sportevents, mobilen Massagen, Sozial- und Mitarbeitendenberatung, und Gesundheitskursen. 

Benefits
Außertarifliche Vergütung und zusätzliche Leistungen nach dem Tarifvertrag der Länder (TV-L), wie Jahressonderzahlung, Zusatzversorgung der VBL, vermögenswirksame Leistungen, Zuschuss zum BVG-Firmenticket oder Dienstfahrrad, überdachter Fahrradstellplatz und die Möglichkeit einen Parkplatz anzumieten sowie Empfehlungsprämie zur Gewinnung neuer Mitarbeitender.', 

'+4915659562321', 'https://www.itdz-berlin.de/', 2),
-- =========================================================================================================================================================================================
(3, 'Klax International GmbH', 
'Abteilungsleitung (m/w/d) Personalverwaltung

Berlin
Feste Anstellung
Vollzeit
Erschienen: vor 9 Stunden

Wir suchen eine Abteilungsleitung Personalverwaltung (m/w/d)

Klax fördert seit mehr als 30 Jahren individuelles Lernen und Kreativität mit Bildungs- und Freizeitangeboten für Kinder, Jugendliche und Erwachsene. Unser Angebot setzt europaweit neue Impulse – in der Wissenschaft, im Ausbildungswesen und in der pädagogischen Praxis.

In der Klax-Gruppe betreuen nahezu 900 Mitarbeitende über 2.400 Kinder in Kinderkrippen und Kindergärten und unterrichten mehr als 600 Kinder und Jugendliche in Schulen sowie mehr als 150 Studierende in unserer Berufsakademie.

Die Klax International GmbH ist das organisatorische Dach der Klax Gruppe. Zu den wesentlichen Aufgaben gehören die Bereitstellung von Verwaltungsdienstleistungen wie z.B. das Personalmanagement, das zentrale Produkt- und Qualitätsmanagement, sowie die Steuerung der Finanzprozesse.

Wir suchen für unseren gruppenweiten agierenden Personalbereich eine Abteilungsleitung Personalverwaltung (m/w/d).
Ihre Aufgaben:

    Sie verantworten die qualitativ hochwertige Umsetzung der Personalverwaltung für die Firmen der Klax Gruppe
    Sie führen und entwickeln die bis zu acht Mitarbeitenden der Personalverwaltung und wirken im Tagesgeschäft mit
    Sie garantieren die Einhaltung von Unternehmensvorgaben sowie relevanter gesetzlicher Regelungen
    Sie sind Ansprechpartner/in für die Führungskräfte der Klax Gruppe zu den Themen der Personalverwaltung
    Sie sichern die kontinuierliche Umsetzung von Prozessen und Abläufen in Ihren Verantwortungsbereich
    Sie sind Ansprechpartner auch für unsere internationalen Mitarbeitenden in Deutschland

Das bringen Sie mit:

    Abgeschlossenes relevantes betriebswirtschaftliches Studium oder vergleichbare Berufsausbildung
    Langjährige Berufserfahrung mit Führungserfahrung 
    Umfassende Fachkenntnisse personalrechtlicher Gesetze und Regelungen
    Serviceorientierung, Engagement und Durchsetzungsvermögen
    Verhandlungssichere Deutschkenntnisse und sehr gute Englischkenntnisse

Unser Angebot:

    Spannende Betätigungsfelder
    33 Tage Urlaub im Jahr
    5 Balance Days im Jahr
    Sorgfältige Einarbeitung und Unterstützung bei Ihren weiteren Schritten in der Klax Gruppe
    Unbefristeter Arbeitsvertrag
    Besondere Angebote für ältere Beschäftigte
    Firmenticket und betriebliche Sozialleistungen
    Weiterbildungsangebote und Mitarbeiterevents', 

'+4915659572321', 'https://klax.de/de', 3);
-- ========================================================================== END ==========================================================================================================



-- =============== CATEGORY =======================
CREATE TABLE Category(
Category_ID INT(10) AUTO_INCREMENT PRIMARY KEY,
Category_Name VARCHAR(50) AUTO_INCREMENT PRIMARY KEY
);

-- (Category_ID, Category_Name)
INSERT INTO Category VALUES
(1, 'Personalverwaltung'),
-- =========================================================================================================================================================================================
(2, 'Management'),
-- =========================================================================================================================================================================================
(3, 'Kommunikation'); 
-- ========================================================================== END ==========================================================================================================


-- =============== JOB =======================
CREATE TABLE Job(
Job_ID INT(10) AUTO_INCREMENT PRIMARY KEY,
JobName VARCHAR(15) NOT NULL,

FOREIGN KEY(Category_ID) REFERENCES Category(Category_ID),
FOREIGN KEY(Company_ID) REFERENCES Company(Company_ID)
);

-- (Job_ID, JobName)
INSERT INTO Job VALUES
(1, 'Redakteur*in Interne Unternehmenskommunikation / Kommunikationsexpert*in'),
-- =========================================================================================================================================================================================
(2, 'Abteilungsleitung (m/w/d) Personalverwaltung'),
-- =========================================================================================================================================================================================
(3, 'Account Manager (m/w/d) Akquisition und Betreuung für unseren Bereich Kreditversicherungen in Vollzeit'); 
-- ========================================================================== END ==========================================================================================================


-- =============== USER =======================
CREATE TABLE Userr(
User_ID INT(10) AUTO_INCREMENT PRIMARY KEY,
UserName VARCHAR(25) NOT NULL,
Telefon VARCHAR(20) NOT NULL,
Email VARCHAR(50) NOT NULL,
Pass VARCHAR(25) NOT NULL
);

-- (User_ID, UserName, Telefon, Email, Pass )
INSERT INTO Userr VALUES
(1, 'Sam Einstein', '+4915987364521', 'sein@gmail.com', 'f29UnY@.iH!'),
-- =========================================================================================================================================================================================
(2, 'Silvia Jung', '+4915287364521', 'sjun@gmail.com', 'h59QjP@,wR!'),
-- =========================================================================================================================================================================================
(3, 'Briana Smith', '+4915987335521', 'bsmi@gmail.com', 'a48VhL@!fJ.'); 
-- ========================================================================== END ==========================================================================================================


