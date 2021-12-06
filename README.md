# DBM02-High school

![Logo de Team](https://github.com/ana-polo/DBM01-pubs/blob/main/DBM.gif "Team logo")


<a name="top"></a>
## Table of Contents
1. [General Info.](#general-info)
2. [Technologies.](#technologies)
3. [Collaboration.](#collaboration)
4. [Problem definition.](#problem-definition)
    1. [Creation of the tables of the DB.](#create)
    2. [Updating the tables to create the foreign key constrains.](#alter)
	

<a name="general-info"></a>
### 1. General Info
***
**Status:** IN PROGRESS.
####
*Training exercise of design and management of databases carried out in the field of Database Management in the Higher Vocational training Degree in Management of Computer Network Systems*

<a name="technologies"></a>
### 2. Technologies
***
A list of technologies used within the project:
*MySQL: Version 8.0 
    - SQL-DDL: Data Definition Language 


[Top](#top)
<a name="collaboration"></a>
### 3. Collaboration
***
Students:
*Haplo35.* 
*ErnestoPGH.* 
*IrvingVqz.*


[Top](#top)
<a name="problem-definition"></a>
### 4. Problem definition
***
<a name="create"></a>
#### i. Create a new database called high-school with the following tables in the new database
****
##### TO DO: 
        1. Decide the appropriate name for each field, the most appropriate data type and whether it is mandatory that the field be 
	   informed or not. (3 points) 
	   
        2. Think about the order in which you will create the tables, keep in mind the restrictions. Define ALL possible constraints 
	   primary keys, foreign keys, etc. (3 points)


**⚠️ WARNING:** All the operations must be done in the creation of the tables.


<details>
    <summary>CLICK ME TO SEE THE TABLES DEFINITION</summary>

	
    *STUDENT
        - The student's academic record number, which in addition to being unique and identifying the student, is composed of 4 letters and 3 digits.        
	- The group to which the student belongs.        
	- The student's NIF.        
	- Name.
        - Surname.
        - Date of birth. Please note that no student under the age of 16 can be enrolled.
        - Address
        - The student's phone number (assume it only has one number) Will not be prefixed +34
        - Gender, which will be F for women and M for men. Use a constraint to define the set of values that this field can take.


    *TEACHER
        - The official number: Uniquely identifies each one and is formed with 4 digits and 3 letters.
        - The teacher's name
        - The teacher's last name
        - The teacher's address
        - The teacher's phone (assume you only have one number). Does not have the prefix +34
        - Field that specifies whether the teacher is interim or not. The vast majority are inter-im.
        - Maximum number of courses that a teacher can teach.
    
    
    *COURSE
        - Field that identifies the course, consists of 4 letters
        - Course description
        - Hours of duration
        - Course price
    
    
    *GROUP
        - Field that identifies the group, consists of 4 uppercase letters, a number and a low-ercase letter.
        - Description of the group
        - Course
        - Teacher
        - Shift, it can be morning or afternoon. Do not use a constraint to define the set of val-ues that this field can take.
        - Start date
        - End date
        - Start time
        - End time


    **REMARKS**
        - Two groups of the same course cannot coincide in the same shift.
        - No course has a higher price of more than € 500 or more than 2000 hours.
        - Each student can only be enrolled in one group.
        - There may be single-day courses.
        - No teacher can teach more than 3 courses.
</details>


**👀 Remember to not forget!**
- Properly format and document the code.
#
#

<a name="alter"></a>
#### ii. Updating the tables.
****


⚠️ **WARNING:** Neither of these operations can be done in the creation of the tables.
 
 
<details>
    <summary>CLICK ME TO SEE THE REQUESTED MODIFICATIONS</summary>
     
		
    ** (0.5 point each) **
    1. Clears the primary key from the teacher's table. What do you have to do before?
    2. Create a primary key in teachers that is the first and last name.
    3. Add a field behind the price in the courses' table, indicating the last year in which it was taught. You don't have to be informed.
    4. Change the data type of the student's name by adding 5 characters.
    5. Delete a foreign key from one of the tables and recreate it.
    6. Delete a CHECK from a table and recreate it.
    7. Rename the group's table by class.
    8. Deletes the teacher's table.
</details>


**👀 Remember to not forget!**
- Properly format and document the code.		 
 
