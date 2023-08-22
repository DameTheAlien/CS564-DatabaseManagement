-- Group 04
-- Damian Franco & Trey Sampson
CREATE TABLE BONE (
	DNA_Result          varchar(10) NOT NULL PRIMARY KEY,
	Isotope_Result      varchar(20),
    Measurement         varchar(20),
    Color               varchar(20),
    Integrity           varchar(20),
    DNA_Sent            varchar(20),
    Isotope_Sent        varchar(20)
	);

CREATE TABLE HEAD (
    DNA_Result          varchar(10),
    Head_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE SKULL (
    DNA_Result          varchar(10),
    Skull_Features      varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE TEETH (
    DNA_Result          varchar(10),
    Teeth_Features      varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE ARM (
    DNA_Result          varchar(10),
    Arm_Features        varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE FOREARM (
    DNA_Result          varchar(10),
    Forearm_Features    varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE HAND (
    DNA_Result          varchar(10),
    Hand_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE UPPER_ARM (
    DNA_Result             varchar(10),
    Upper_Arm_Features     varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE LEG (
    DNA_Result          varchar(10),
    Leg_Features        varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE CALF (
    DNA_Result          varchar(10),
    Calf_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE FOOT (
    DNA_Result          varchar(10),
    Foot_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE TORSO (
    DNA_Result           varchar(10),
    Torso_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE PELVIS (
    DNA_Result            varchar(10),
    Pelvis_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE RIBS (
    DNA_Result          varchar(10),
    Ribs_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE SPINE (
    DNA_Result           varchar(10),
    Spine_Features       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);
    
CREATE TABLE RECOVERED (
    DNA_Result           varchar(10),
    Part_Recovered       varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	);

CREATE TABLE GENERIC (
    DNA_Result          varchar(10),
    Belongs_To_Adult    varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result)
	)

CREATE TABLE OMI_CASE (
    Case_Number             varchar(20) NOT NULL PRIMARY KEY,
    Date_Opened             varchar(20),
    Date_Found              varchar(20),
    Person_Name             varchar(20),
    Person_DOB              varchar(20),
    Person_SSN              varchar(20),
    Person_Stature          varchar(20),
    Person_Sex              varchar(20),
    Person_Ancestry         varchar(20),
    Person_Location         varchar(20),
    Environment             varchar(20),
    Indoors                 varchar(20),
    Outdoors                varchar(20),
    Resolved                varchar(20),
    Era                     varchar(20),
    Clothes_Found           varchar(20),
    Body_Orientation        varchar(20),
    Overall_Decomposition   varchar(20)
	);

CREATE TABLE DAMAGE (
    Severity        varchar(20) NOT NULL PRIMARY KEY
	);

CREATE TABLE DECOMPOSITION (
    Rodent              varchar(20),
    Insect              varchar(20),
    Carnivore           varchar(20),
    Weathering          varchar(20),
    FOREIGN KEY(Severity) REFERENCES DAMAGE(Severity)
	);

CREATE TABLE PATHOLOLOGY (
    Disease_Name    varchar(20),
    Paper           varchar(20),
    Measures        varchar(20),
    FOREIGN KEY(Severity) REFERENCES DAMAGE(Severity)
	);

CREATE TABLE TRAUMA (
    Trauma_Type    varchar(20),
    Trauma_Time    varchar(20),
    FOREIGN KEY(Severity) REFERENCES DAMAGE(Severity)
	);

CREATE TABLE IMAGE (
    Image_Name    varchar(20) NOT NULL,
    Body_Area     varchar(20) NOT NULL,
    Image_Type    varchar(20),
    CONSTRAINT PK_image PRIMARY KEY (Image_Name, Body_Area)
	);

CREATE TABLE METHODS (
    Method_Name         varchar(20) NOT NULL,
    Method_Paper        varchar(20) NOT NULL,
    Method_Measures     varchar(20),
    CONSTRAINT PK_methods PRIMARY KEY (Method_Name, Method_Paper)
	);

CREATE TABLE apply_to (
    DNA_Result      varchar(20),
    Method_Name     varchar(20),
    Method_Paper    varchar(20),
    Apply_Result    varchar(20),
    FOREIGN KEY(DNA_Result) REFERENCES BONE(DNA_Result),
    FOREIGN KEY(Method_Name) REFERENCES METHODS(Method_Name),
    FOREIGN KEY(Method_Paper) REFERENCES METHODS(Method_Paper)
	);