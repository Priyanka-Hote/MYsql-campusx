SELECT * FROM campusx.insurance;

SELECT * FROM campusx.insurance WHERE gender='male' and region='southwest';
# Show all records having bmi in range 30 to 45 both inclusive.;
SELECT * from campusx.insurance where bmi between 30 and 45;

# Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.

select min(bloodpressure) as MinBP , max(bloodpressure) as MaxBP from campusx.insurance where smoker='YES';

# Find no of unique patients who are not from southwest region.

select distinct(count(PatientID)) from campusx.insurance where region !='southwest';


# Total claim amount from male smoker.
 SELECT SUM(claim) as 'TOTAL CLAIM' from campusx.insurance where smoker ='YES' and gender='male';
 
 # Select all records of south region.
 
 SELECT * FROM campusx.insurance WHERE region='south';
 
 # No of patient having normal blood pressure. Normal range[90-120]
 
 SELECT COUNT(*) as No_Of_Patient FROM campusx.insurance WHERE 	bloodpressure between 90 and 120;
 
# What is the average claim amount for non-smoking female patients who are diabetic?

SELECT avg(claim) FROM campusx.insurance WHERE gender='female' and diabetic='YES' and smoker ='NO';

# Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.

UPDATE campusx.insurance 
set claim = 5000
where PatientID=1234;

# Write a SQL query to delete all records for patients who are smokers and have no children.
delete from campusx.insurance  where smoker='YES' and children=0;
