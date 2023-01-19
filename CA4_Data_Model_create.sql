
-- tables
-- Table: Asset
CREATE TABLE Asset (
    id_number integer NOT NULL CONSTRAINT Asset_pk PRIMARY KEY,
    Name varchar(50) NOT NULL
);

-- Table: Asset_for_Library
CREATE TABLE Asset_for_Library (
    Asset_id_number integer NOT NULL,
    Library_id_number integer NOT NULL,
    CONSTRAINT Asset_for_Library_pk PRIMARY KEY (Asset_id_number,Library_id_number)
);

-- Table: Group
CREATE TABLE Groups (
    id_number integer NOT NULL CONSTRAINT Group_pk PRIMARY KEY,
    Name varchar(50) NOT NULL
);

-- Table: Group_for_Project
CREATE TABLE Group_for_Project (
    Project_id_number integer NOT NULL,
    Group_id_number integer NOT NULL,
    CONSTRAINT Group_for_Project_pk PRIMARY KEY (Project_id_number,Group_id_number)
);

-- Table: Job_Title
CREATE TABLE Job_Title (
    id_number integer NOT NULL CONSTRAINT Job_Title_pk PRIMARY KEY,
    Title_Name varchar(50) NOT NULL
);

-- Table: Library
CREATE TABLE Library (
    id_number integer NOT NULL CONSTRAINT Library_pk PRIMARY KEY,
    Name varchar(50) NOT NULL
);

-- Table: Member_Title
CREATE TABLE Member_Title (
    Team_Member_id_number integer NOT NULL,
    Title_id_number integer NOT NULL,
    CONSTRAINT Member_Title_pk PRIMARY KEY (Team_Member_id_number,Title_id_number)
);

-- Table: Project
CREATE TABLE Project (
    id_number integer NOT NULL CONSTRAINT Project_pk PRIMARY KEY,
    Title varchar(50) NOT NULL,
    finish_date date NOT NULL
);

-- Table: Team_Member
CREATE TABLE Team_Member (
    id_number integer NOT NULL CONSTRAINT Team_Member_pk PRIMARY KEY,
    Name varchar(50) NOT NULL,
    Group_id_number integer NOT NULL
);

-- Table: Work_Item
CREATE TABLE Work_Item (
    id_number integer NOT NULL CONSTRAINT Work_Item_pk PRIMARY KEY,
    Project_id_number integer NOT NULL,
    Asset_id_number integer NOT NULL
);

-- End of file.

