/*/*
    File: DDL_music-library.sql                                      
    Purpose: DBM SQL DDL Exercice 03- Create a database for a music-library 
    Written: 25/10/2021 
    Author: Ana Polo  Arozamena                                      
*/


DROP DATABASE IF EXISTS music_library;


CREATE DATABASE IF NOT EXISTS music_library CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
use music_library;


CREATE TABLE IF NOT EXISTS music ( 
    id_nif VARCHAR( 10 )  NOT NULL,
    music_name VARCHAR( 30 )  NOT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_nif ) 
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS theme ( 
    id_theme TINYINT NOT NULL,
    title VARCHAR( 30 )  NOT NULL,
    theme_time DOUBLE DEFAULT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_theme ) 
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS club ( 
    id_club VARCHAR( 3 )  NOT NULL,
    club_name VARCHAR( 30 )  NOT NULL,
    headquarter VARCHAR( 30 )  DEFAULT NULL,
    num SMALLINT DEFAULT NULL,
    fk_id_group VARCHAR( 3 )  NOT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_club ) 
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS company ( 
    id_company VARCHAR( 3 )  NOT NULL,
    company_name VARCHAR( 30 )  NOT NULL,
    adress VARCHAR( 30 )  DEFAULT NULL,
    fax VARCHAR( 15 )  DEFAULT NULL,
    phone VARCHAR( 15 )  DEFAULT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_company ) 
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS album ( 
    id_album VARCHAR( 3 )  NOT NULL,
    album_name VARCHAR( 30 )  DEFAULT NULL,
    publish_date DATETIME DEFAULT NULL,
    fk_id_company VARCHAR( 3 )  NOT NULL,
    fk_id_group VARCHAR( 3 )  NOT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_album )
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS theme_album ( 
    id_fk_id_theme TINYINT  NOT NULL,
    id_fk_id_album VARCHAR( 3 )  NOT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_fk_id_theme, id_fk_id_album )
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS music_group ( 
    id_group VARCHAR( 3 )  NOT NULL,
    group_name VARCHAR( 30 )  NOT NULL,
    birth DATETIME DEFAULT NULL,
    country VARCHAR( 20 )  DEFAULT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_group )
) ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS music_music_group ( 
    id_fk_id_nif VARCHAR( 10 )  NOT NULL,
    id_fk_id_group VARCHAR( 3 )  NOT NULL,
    music_role VARCHAR( 15 )  DEFAULT NULL,
   
    CONSTRAINT pk PRIMARY KEY ( id_fk_id_nif , id_fk_id_group )
) ENGINE=InnoDB;



/*-- Constraints */

ALTER TABLE club
    ADD CONSTRAINT fk_group_club FOREIGN KEY ( fk_id_group )  
        REFERENCES music_group ( id_group )  
            ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE album
    ADD CONSTRAINT fk_company_album FOREIGN KEY ( fk_id_company )  
        REFERENCES company ( id_company )  
            ON DELETE CASCADE ON UPDATE CASCADE,
      
    ADD CONSTRAINT fk_group_album FOREIGN KEY ( fk_id_group )  
        REFERENCES music_group ( id_group )  
            ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE theme_album
    ADD CONSTRAINT fk_theme_theme_album FOREIGN KEY ( id_fk_id_theme )  
        REFERENCES theme ( id_theme ) 
            ON DELETE CASCADE ON UPDATE CASCADE,

    ADD CONSTRAINT fk_album_theme_album FOREIGN KEY ( id_fk_id_album )  
        REFERENCES album ( id_album )  
            ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE music_music_group
    ADD CONSTRAINT fk_music_music_music_group FOREIGN KEY ( id_fk_id_nif )  
        REFERENCES music ( id_nif )  
            ON DELETE CASCADE ON UPDATE CASCADE,
    
    ADD CONSTRAINT fk_group_music_music_group FOREIGN KEY ( id_fk_id_group )  
        REFERENCES music_group ( id_group )  
            ON DELETE CASCADE ON UPDATE CASCADE;


