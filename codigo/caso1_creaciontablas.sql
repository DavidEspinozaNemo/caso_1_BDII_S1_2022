-- Creación de la base de datos Aseni Caso 1
-- CREATE DATABASE aseni_c1;

-- Tablas:
-- Tablas independientes
CREATE TABLE type_user(
	idtype int IDENTITY(1,1) PRIMARY KEY,
	nametype nvarchar(50) NOT NULL,
	descriptiontype nvarchar(200) NOT NULL
);

CREATE TABLE party(
	idparty int IDENTITY(1,1) PRIMARY KEY,
	registdate date NOT NULL,
	urlflag nvarchar(200) NOT NULL,
	urllogo nvarchar(200) NOT NULL
);

CREATE TABLE province(
	idprovince int IDENTITY(1,1) PRIMARY KEY,
	nameprovince nvarchar(50) NOT NULL
);

-- Tablas dependientes
CREATE TABLE userr(
	iduser int IDENTITY(1,1) PRIMARY KEY,
	nameuser nvarchar(50) NOT NULL,
	lastname nvarchar(100) NOT NULL,
	urlimage nvarchar(200) NOT NULL,
	registdate date NOT NULL,
	typeuser int NOT NULL,
	CONSTRAINT FK_user_x_type FOREIGN KEY (typeuser)
        REFERENCES type_user (idtype)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE password_user(
	idpassword int IDENTITY(1,1) PRIMARY KEY,
	passworduser nvarchar(120) NOT NULL,
	iduser int NOT NULL,
	CONSTRAINT FK_passw_x_user FOREIGN KEY (iduser)
		REFERENCES userr (iduser)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE government_plan(
	idgovplan int IDENTITY(1,1) PRIMARY KEY,
	title nvarchar(50) NOT NULL,
	descriptiongov nvarchar(200) NOT NULL,
	initialdate date NOT NULL,
	finishdate date NOT NULL,
	idparty int NOT NULL,
	CONSTRAINT FK_gov_x_party FOREIGN KEY (idparty)
		REFERENCES party (idparty)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE action_gov(
	idaction int IDENTITY(1,1) PRIMARY KEY,
	idgovplan int NOT NULL,
	idprovince int NOT NULL,
	deliverable_description nvarchar(120) NOT NULL,
	finishdate date NOT NULL,
	kpi_value nvarchar(100) NOT NULL,
	kpi_entity nvarchar(100) NOT NULL,
	CONSTRAINT FK_actgov_x_gov FOREIGN KEY (idgovplan)
		REFERENCES government_plan (idgovplan)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT FK_actgov_x_prov FOREIGN KEY (idprovince)
		REFERENCES province (idprovince)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Tablas de transición
CREATE TABLE party_manager(
	idmanager int IDENTITY(1,1) PRIMARY KEY,
	iduser int NOT NULL,
	idparty int NOT NULL,
	active bit NOT NULL,
	CONSTRAINT FK_tt_x_user FOREIGN KEY (iduser)
		REFERENCES userr (iduser)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT FK_tt_x_party FOREIGN KEY (idparty)
		REFERENCES party (idparty)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);