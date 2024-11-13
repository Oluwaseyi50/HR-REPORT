### after importing,the first thing to do is to view all the table*/
Use da_flora22;

/* for the data cleaning process we have to describe our table to know if the data type is in the right format*/
describe human_resources;

### as we can see, we found out that some fields that are supposed to be in date/datetime type are in text type
/*to correct that we have to use the functions below*/

SELECT DISTINCT birthdate FROM human_resources;

UPDATE human_resources 
SET birthdate = STR_TO_DATE(birthdate, '%m-%d-%y')
WHERE birthdate LIKE '%-%-%';

UPDATE human_resources 
SET birthdate = STR_TO_DATE(birthdate, '%m/%d/%Y')
WHERE birthdate LIKE '%/%/%';

UPDATE human_resources 
SET birthdate = STR_TO_DATE(birthdate, '%Y-%m-%d')
WHERE birthdate = '1991-06-04';


UPDATE human_resources
SET hire_date = DATE_FORMAT(birthdate, '%m/%d/%Y');

UPDATE human_resources 
SET birthdate = STR_TO_DATE(hire_date, '%m/%d/%Y')
WHERE birthdate LIKE '%/%/%';

UPDATE human_resources 
SET birthdate = STR_TO_DATE(hire_date, '%Y-%m-%d')
WHERE birthdate = '06/04/1991';


UPDATE human_resources
SET hire_date = DATE_FORMAT(hire_date, '%m/%d/%Y');

/* because we had empty strings and "UTC" in our termdate field, we had to run the following queries below for it to work 
(1) we specified the strings we needed with the index (1,19) THUS excluding "UTC" which started with the index number of 20
(2) we assigned the empty string THUS changing the empty strings to following the format of the field 0000-00-00 00:00:00 */

UPDATE human_resources
SET termdate = 
    CASE 
        WHEN termdate <> '' THEN STR_TO_DATE(SUBSTRING(termdate, 1, 19), '%Y-%m-%d %H:%i:%s')
        ELSE '0000-00-00 00:00:00'
        END;
        
ALTER TABLE human_resources
MODIFY birthdate DATE;

ALTER TABLE human_resources
MODIFY hire_date DATE;

UPDATE human_resources
SET termdate = NULL
WHERE termdate = '0000-00-00 00:00:00';

ALTER TABLE human_resources
MODIFY termdate DATETIME;   
 
 /* The error message "Incorrect datetime value: '0000-00-00 00:00:00'" indicates that MySQL is rejecting the attempt to modify the termdate column to DATETIME
 because some rows currently have a value of '0000-00-00 00:00:00'. MySQL does not allow '0000-00-00 00:00:00' as a valid datetime value for DATETIME columns 
 because it represents an invalid date-time. To resolve this issue, We have to update the invalid values with "null" */
 
 ### NOW WE ALL DATATYPES ARE CORRECT
 
 /* final step we took in our data cleaning was to concat "first name" and "last name" together as a new field "name" column
 and we selected the needed columns*/
 
 select ï»¿id, first_name, last_name, birthdate, gender,
 race, department, jobtitle, location, hire_date, termdate, location_city, location_state, count(*)
 from human_resources group by  ï»¿id, first_name, last_name, birthdate, gender, race, department,
 jobtitle, location, hire_date, termdate, location_city, location_state
 having count(*)>1;
 
 ### We changed the field name "ï»¿id" to "id"

 alter table human_resources rename column ï»¿id to id;
 
 
 select id, birthdate, gender, department, 
 jobtitle, location, hire_date, termdate, location_city, location_state, concat(first_name,' ',last_name) as name from human_resources;
 
 
 
 
