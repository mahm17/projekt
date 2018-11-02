DROP TABLE IF EXISTS kommuner;

CREATE TABLE kommuner
(
	object_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    namn VARCHAR(40),
    id INT,
    area INT,
    length INT,
    kommun_id INT
);

CREATE TABLE kunduppgifter
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kund VARCHAR(40),
    kontaktperson VARCHAR(25),
    tekniker VARCHAR(25),
    datum DATETIME,
    systemnummer INT,
    version INT,
    koordinatsystem VARCHAR(40)
);

CREATE TABLE licensserver
(
	arcgis VARCHAR(50)
);

CREATE TABLE databasserver
(
	server_ip VARCHAR(100),
    operativsystem VARCHAR(20),
    version CHAR(5),
    losen_sa VARCHAR(40),
    losen_sde VARCHAR(40),
    systemdatabas VARCHAR(20),
    systemanvändare_lösen VARCHAR(20),
    losen_gng VARCHAR(20)
);

CREATE TABLE arcgis_server
(
	server_ip VARCHAR(50),
    operativsystem VARCHAR(20),
    serverkatalog VARCHAR(30),
    serverkonto_losen VARCHAR(20),
    server_manager VARCHAR(20),
    admin_losen VARCHAR(20),
    anvanderkatalog VARCHAR(30),
    dokumentkatalog VARCHAR(30),
    installationskatalog VARCHAR(30),
    databaskomprimering VARCHAR(50)
);

CREATE TABLE tjanstekonto
(
	losen VARCHAR(20)
);

CREATE TABLE identity_provider
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    porgrampool VARCHAR(40),
    adress VARCHAR(30)
);

CREATE TABLE business_logic
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    programpool VARCHAR(40),
    address VARCHAR(30)
);

CREATE TABLE bussiness_services
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    programpool VARCHAR(40),
    adress VARCHAR(30)
);

CREATE TABLE geosecma_manager
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    programpool VARCHAR(40),
    adress VARCHAR(30),
    systemadministratörsgrupp VARCHAR(10),
    anvandarautensiering VARCHAR(10)
);

CREATE TABLE geosecma_webbapplikation
(
	server_ip_one VARCHAR(50),
    installationskatalog_one VARCHAR(30),
    programpool_one VARCHAR(40),
    address_one VARCHAR(30),
    anvandarautensiering_one VARCHAR(10),
    server_ip_two VARCHAR(50),
    installationskatalog_two VARCHAR(30),
    programpool_two VARCHAR(40),
    adress_two VARCHAR(30),
    anvandarautensiering_two VARCHAR(10)
);

CREATE TABLE befolkning
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    programpool VARCHAR(40),
    adress VARCHAR(30),
    kir_server VARCHAR(20),
    doman VARCHAR(20),
    kir_anvandare_losen VARCHAR(20)
);

CREATE TABLE edp_future
(
	adress VARCHAR(50),
    edp_anvandare_losen VARCHAR(20)
);

CREATE TABLE partnerdatabyte
(
	server_ip VARCHAR(50),
    installationskatalog VARCHAR(30),
    programpool VARCHAR(40),
    address VARCHAR(50),
    edp_future_adress VARCHAR(100)
);

CREATE TABLE arken
(
	server_ip VARCHAR(50),
    adress VARCHAR(50),
    anvandare_losen VARCHAR(20)
);

CREATE TABLE installationsfiler
(
	filer VARCHAR(100)
);

CREATE TABLE ovrigt
(
	extra VARCHAR(50)
);
