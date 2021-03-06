/*/*
    File: DML_music-library.sql                                      
    Purpose: DBM SQL DML Exercice 03- Insert records in a database for a music-library 
    Written: 25/10/2021 
    Author: Ana Polo  Arozamena                                      
*/


use music_library;


INSERT INTO music ( id_nif, music_name ) VALUES
	( '1111111111', 'Adrian Lee' ),
	( '1111111112', 'Adam Clayton' ),
	( '1111111113', 'Bono' ),
	( '1111111114', 'C. Burchill' ),
	( '1111114444', 'Carlos Torero' ),
	( '2345678444', 'Edge' ),
	( '3232456547', 'Phil Collins' ),
	( '3333567898', 'Santiago Auserón' ),
	( '3454677777', 'Jim Kerr' ),
	( '4444444444', 'Larry Jr.Mullen' ),
	( '4454321111', 'Luis Auserón' ),
	( '5454532222', 'Paul Young' ),
	( '5555678976', 'Enrique Sierra' ),
	( '5556787777', 'J.L. Giménez' ),
	( '5656378999', 'Soledad Giménez' ),
	( '6666667885', 'Nacho Maño' ),
	( '7654323234', 'P. van Hooke' ),
	( '7876543428', 'Tony Banks' ),
	( '8884566666', 'M. Rutherford' );



INSERT INTO theme ( id_theme, title, theme_time ) VALUES
	( 1, '20th Century Promise', 4 ),
	( 2, '37 grados', 4 ),
	( 3, '4th of July', 3 ),
	( 4, '7 Deadly Sins', 6 ),
	( 5, 'A cara o cruz', 5 ),
	( 6, 'A sort of homecoming', 3 ),
	( 7, 'Afterglow', 4 ),
	( 8, 'Al atardecer', 4 ),
	( 9, 'Al sur', 3 ),
	( 10, 'Alive And Kicking', 4 ),
	( 11, 'All The things She..', 4 ),
	( 12, 'Alma de blues', 4 ),
	( 13, 'And The Band ...', 4 ),
	( 14, 'Andas junto a mí', 3 ),
	( 15, 'Annabel Lee', 3 ),
	( 16, 'Anything she does', 3 ),
	( 17, 'Artitoestoy', 4 ),
	( 18, 'Asoma el llanto', 3 ),
	( 19, 'Babyface', 4 ),
	( 20, 'Bad', 2 ),
	( 21, 'Barbara del campo', 4 ),
	( 22, 'Beautiful day', 5 ),
	( 23, 'Before', 4 ),
	( 24, 'Black and blue', 3 ),
	( 25, 'Blame', 4 ),
	( 26, 'Book of Brilliant...', 5 ),
	( 27, 'Brazilian', 4 ),
	( 28, 'Cada historia', 3 ),
	( 29, 'Can''t dance', 4 ),
	( 30, 'Careful In Career', 4 ),
	( 31, 'Carpet crawlers', 4 ),
	( 32, 'Cinema show', 5 ),
	( 33, 'Come A Long Way', 2 ),
	( 34, 'Cómo hemos cambiado', 3 ),
	( 35, 'Criminal World', 5 ),
	( 36, 'Cuando quiero sol', 5 ),
	( 37, 'Daddys Goma pay for', 5 ),
	( 38, 'Dance on a volcano', 4 ),
	( 39, 'De puntillas', 3 ),
	( 40, 'De sol a sol', 4 ),
	( 41, 'Dirty day', 5 ),
	( 42, 'Domino', 5 ),
	( 43, 'Don''t', 4 ),
	( 44, 'Dreaming while ...', 4 ),
	( 45, 'Driving the last...', 4 ),
	( 46, 'E.de C. instrumental', 3 ),
	( 47, 'East At Easter', 4 ),
	( 48, 'El canto del gallo', 5 ),
	( 49, 'El hombre de papel', 2 ),
	( 50, 'El nadador', 3 ),
	( 51, 'Elvis Presley & USA', 3 );


INSERT INTO company ( id_company, company_name, adress, fax, phone ) VALUES
	( '001', 'Island', '67, JB St.', '     78782222', '     72724444' ),
	( '002', 'ARIOLA', 'Aragón 204', '    913667889', '    913667890' ),
	( '003', 'WEA', 'L Hoyos 42', '    932401212', '    932401213' ),
	( '004', 'Virgin', '2,23th St.', '     20812445', '     20812446' ),
	( '005', 'ATLANTIC', '12, E St.', '      5481223', '      5482312' ),
	( '006', 'PoliDiscos', 'Camí de Vera', '      3870001', '      3870000' ),
	( '007', 'PoliDiscos', 'Polynesia St.', '    942380540', '    942380522' );


INSERT INTO music_group ( id_group, group_name, birth, country ) VALUES
	( '001', 'U2', '1977-01-01 00:00:00', 'United Kingdown' ),
	( '002', 'Simple Minds', '1979-02-09 00:00:00', 'United Kingdown' ),
	( '003', 'Mike + The Mechanics', '1988-04-06 00:00:00', 'United Kingdown' ),
	( '004', 'Genesis', '1975-10-10 00:00:00', 'United Kingdown' ),
	( '005', 'Presuntos Implicados', '1985-11-01 00:00:00', 'Spain' ),
	( '006', 'Radio Futura', '1980-01-07 00:00:00', 'Spain' );


INSERT INTO club ( id_club, club_name, headquarter, num, fk_id_group ) VALUES
	( '001', 'Zoomanía', '33, Abbey Road', 2508, '001' ),
	( '002', 'u2foryou', '23, 11th Street', 1700, '001' ),
	( '003', 'Ché U2', 'C/Almussafes 59', 239, '001' ),
	( '004', 'Troglominds', 'C/Lepe 22', 999, '002' ),
	( '005', 'Mentes Fuertes', 'Ramón y Cajal 14', 1984, '002' ),
	( '006', 'The best mind', '24, Homeround', 1413, '002' ),
	( '007', 'Genefans', 'C/Visitación 34', 23412, '004' ),
	( '008', 'Fanaticgens', 'Av. H. Dominicos 155', 12002, '004' ),
	( '009', 'Futuristas', 'C/Alboraya 10', 9850, '006' ),
	( '010', 'Machines', 'Calle 3, Lab 3', 7789, '003' ),
	( '011', 'Jardín Botánico', '203,Valencia 46004', 357, '006' ),
	( '012', 'Bonoculture', '12, East Av.', 129, '001' ),
	( '013', 'Waterfront', 'C/Martín Blas 22', 234, '002' ),
	( '014', 'FanMike', 'Beverly Hills 90210', 11, '003' ),
	( '015', 'Presuntos', 'C/Albacete 12, bajo', 237, '005' ),
	( '016', 'Implicado', 'Torrejón de Ardoz 12', 25, '005' ),
	( '017', 'Los Culpables', 'C/Maria Cristina 67', 355, '005' );



INSERT INTO album ( id_album, album_name, publish_date, fk_id_company, fk_id_group ) VALUES
	( '001', 'October', '1981-10-12 00:00:00', '001', '001' ),
	( '002', 'Zooropa', '1994-08-10 00:00:00', '001', '001' ),
	( '003', 'The unforgettable fi', '1983-03-07 00:00:00', '001', '001' ),
	( '004', 'Achtung baby', '1991-12-09 00:00:00', '001', '001' ),
	( '005', 'Once upon a time', '1985-10-10 00:00:00', '004', '002' ),
	( '006', 'Good news F.N. world', '1995-11-12 00:00:00', '004', '002' ),
	( '007', 'Sparkle in the rain', '1984-03-03 00:00:00', '004', '002' ),
	( '008', 'Sister feelings call', '1981-03-04 00:00:00', '004', '002' ),
	( '009', 'Living years', '1988-04-02 00:00:00', '005', '003' ),
	( '010', 'Word of mouth', '1991-05-07 00:00:00', '005', '003' ),
	( '011', 'We can''t dance', '1991-02-02 00:00:00', '005', '004' ),
	( '012', 'Invisible touch', '1986-03-03 00:00:00', '005', '004' ),
	( '013', 'Seconds out', '1986-08-08 00:00:00', '005', '004' ),
	( '014', 'De sol a sol', '1987-01-08 00:00:00', '003', '005' ),
	( '015', 'Ser de agua', '1991-02-05 00:00:00', '003', '005' ),
	( '016', 'Alma de blues', '1989-02-03 00:00:00', '003', '005' ),
	( '017', 'La ley del desierto', '1984-03-02 00:00:00', '002', '006' ),
	( '018', 'La canción de JPerro', '1987-04-03 00:00:00', '002', '006' );


INSERT INTO theme_album ( id_fk_id_theme, id_fk_id_album ) VALUES
	( 19, '002' ),
	( 37, '002' ),
	( 41, '002' ),
	( 3, '003' ),
	( 6, '003' ),
	( 20, '003' ),
	( 51, '003' ),
	( 17, '004' ),
	( 10, '005' ),
	( 11, '005' ),
	( 33, '005' ),
	( 4, '006' ),
	( 13, '006' ),
	( 35, '006' ),
	( 26, '007' ),
	( 47, '007' ),
	( 1, '008' ),
	( 30, '008' ),
	( 22, '009' ),
	( 24, '009' ),
	( 25, '009' ),
	( 43, '009' ),
	( 23, '010' ),
	( 29, '011' ),
	( 44, '011' ),
	( 45, '011' ),
	( 16, '012' ),
	( 27, '012' ),
	( 42, '012' ),
	( 7, '013' ),
	( 31, '013' ),
	( 32, '013' ),
	( 38, '013' ),
	( 9, '014' ),
	( 40, '014' ),
	( 8, '015' ),
	( 14, '015' ),
	( 21, '015' ),
	( 34, '015' ),
	( 36, '015' ),
	( 39, '015' ),
	( 12, '016' ),
	( 18, '016' ),
	( 28, '016' ),
	( 46, '017' ),
	( 50, '017' ),
	( 2, '018' ),
	( 5, '018' ),
	( 15, '018' ),
	( 48, '018' ),
	( 49, '018' );


INSERT INTO music_music_group ( id_fk_id_nif, id_fk_id_group, music_role ) VALUES
	( '1111111111', '003', 'keyboard' ),
	( '1111111112', '001', 'bass' ),
	( '1111111113', '001', 'voice' ),
	( '1111111114', '002', 'guitar' ),
	( '1111114444', '006', 'drums' ),
	( '2345678444', '001', 'guitar' ),
	( '3232456547', '004', 'voice' ),
	( '3333567898', '006', 'voice' ),
	( '3454677777', '002', 'voice' ),
	( '4444444444', '001', 'drums' ),
	( '4454321111', '006', 'bass' ),
	( '5454532222', '003', 'voice' ),
	( '5555678976', '006', 'guitar' ),
	( '5556787777', '005', 'guitar' ),
	( '5656378999', '005', 'voice' ),
	( '6666667885', '005', 'bass' ),
	( '7654323234', '003', 'drums' ),
	( '7876543428', '004', 'keyboard' ),
	( '8884566666', '003', 'bass' ),
	( '8884566666', '004', 'bass' );
    