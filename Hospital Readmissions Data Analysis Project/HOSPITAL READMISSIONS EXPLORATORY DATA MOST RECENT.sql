#Average Number of Overall Readmissions
SELECT ROUND(AVG(CASE WHEN readmitted = "Yes" THEN 1 ELSE 0 END),2) * 100 AS avg_admitted
FROM hospital_readmissions
;

#Readmissions based on Age
SELECT age_range, COUNT(age_range), SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions,  ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY age_range
ORDER BY 2 DESC
;


#Readmissions based on time spent in the hospital and percentage readmitted
SELECT time_in_hospital, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY time_in_hospital
ORDER BY 2 DESC
;

#Readmissions based on time spent in hospital and average readmissions per day
SELECT time_in_hospital, ROUND(AVG(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END),2) AS avg_readmissions
FROM hospital_readmissions
GROUP BY time_in_hospital
ORDER BY 1 ASC
;

#Readmissions based on Medical Specialty
SELECT medical_specialty, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY medical_specialty
ORDER BY 2 DESC
;

#Readmissions based on Diagnosis
SELECT diag_1, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY diag_1
ORDER BY 2 DESC
;


#Readmissions based on A1C testing results and percent readmitted
SELECT A1Ctest, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, 
AVG(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS avg_readmissions,
ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY A1Ctest
ORDER BY 2 DESC
;

#Readmissions based on diabetes medication and A1C outcomes
SELECT diabetes_med, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, 
SUM(CASE WHEN A1Ctest = "no" THEN 1 ELSE 0 END) AS a1c_not,  
SUM(CASE WHEN A1Ctest = "normal" THEN 1 ELSE 0 END) AS a1c_normal,  
SUM(CASE WHEN A1Ctest = "high" THEN 1 ELSE 0 END) AS a1c_high
FROM hospital_readmissions
GROUP BY diabetes_med
ORDER BY 2 DESC
;


#Readmissions based on high Glucose tests (> 200mg/dl)
SELECT glucose_test, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions, ROUND(SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) /  COUNT(readmitted) * 100, 2) AS percent_readmitted
FROM hospital_readmissions
GROUP BY glucose_test
ORDER BY 2 DESC
;


#Average number of vists by type
SELECT ROUND(AVG(n_outpatient),2) AS avg_outpat, ROUND(AVG(n_inpatient),2) AS avg_inpatient, ROUND(AVG(n_emergency),2) AS avg_emerg
FROM hospital_readmissions
;

#Readmissions based on number of visits and types
SELECT n_outpatient, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions
FROM hospital_readmissions
GROUP BY n_outpatient
ORDER BY 2 DESC
;

SELECT n_inpatient, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions
FROM hospital_readmissions
GROUP BY n_inpatient
ORDER BY 2 DESC
;

SELECT n_emergency, SUM(CASE WHEN readmitted = "yes" THEN 1 ELSE 0 END) AS count_readmissions
FROM hospital_readmissions
GROUP BY n_emergency
ORDER BY 2 DESC
;


#Readmission Rates of patients that didn't have any prior Appointments
SELECT ROUND(AVG(CASE WHEN readmitted = "Yes" THEN 1 ELSE 0 END),2) * 100 AS avg_admitted, ROUND(SUM(CASE WHEN readmitted = "Yes" THEN 1 ELSE 0 END),2) * 100 AS sum_admitted
FROM hospital_readmissions
WHERE n_outpatient = 0 AND n_inpatient = 0 AND n_emergency = 0
;

#Readmission Rates of patients that did have any number of prior Appointments
SELECT ROUND(AVG(CASE WHEN readmitted = "Yes" THEN 1 ELSE 0 END),2) * 100 AS avg_admitted, ROUND(SUM(CASE WHEN readmitted = "Yes" THEN 1 ELSE 0 END),2) * 100 AS sum_admitted
FROM hospital_readmissions
WHERE n_outpatient <> 0 AND n_inpatient <> 0 AND n_emergency <> 0
;
