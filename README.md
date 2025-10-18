# Hospital Readmissions Data Analysis Project

Hospital readmissions, particularly unplanned ones, place a significant burden on healthcare systems, patients, and insurers. Frequent readmissions can be symptomatic of gaps in the quality of care, inadequate follow-up, or poor management of chronic conditions. Understanding the key drivers of readmission is essential for improving patient outcomes and reducing operational costs.
<br>
<br>
---

Key insights and recommendations are provided in the following areas:

- Readmission rates based on various criteria such as:
    - Age demographics
    - Primary, Secondary, and Tertiary diagnoses
    - Medical Specialty of the Provider
    - Previous healthcare visits
    - Results of glucose testing and status
<br>
<br>
<br>
<br>
---
### Project Objectives

- Provide actionable insights to healthcare stakeholders to improve care transitions and patient follow-up.
- Identify opportunities for personalized care planning based on patient characteristics and medical history.
<br>
<br>
<br>
<br>

### Data Structure

| Column | Definition | Data type |
| :------- | :------: | -------: |
| age | age range | string |
| time_in_hospital | time admitted in days | int |
| n_procedures | number of procedures performed during the hospital stay | int |
| n_lab_procedures |	number of laboratory procedures performed during the hospital stay | int |
| n_medications | number of medications administered during the hospital stay |int |
| n_outpatient| number of outpatient visits in the year before a hospital stay | int |
| n_inpatient | number of inpatient visits in the year before the hospital stay | int |
| n_emergency |	number of visits to the emergency room in the year before the hospital stay | int |
| medical_specialty | the specialty of the admitting physician | string |
| diag_1 | primary diagnosis (Circulatory, Respiratory, Digestive, etc. | string |
| diag_2 | secondary diagnosis| string |
| diag_3 | additional secondary diagnosis |	string |
| glucose_test | whether the glucose serum came out as high (> 200), normal, or not performed |string |
| A1Ctest |whether the A1C level of the patient came out as high (> 7%), normal, or not performed | string |
| change | whether there was a change in the diabetes medication ('yes' or 'no') | string |
| diabetes_med | whether a diabetes medication was prescribed ('yes' or 'no') | string |
| readmitted | if the patient was readmitted at the hospital ('yes' or 'no') |	string |

This dataset is composed of 25000 rows and 17 columns.

<a href = "https://www.kaggle.com/datasets/dubradave/hospital-readmissions">Original Dataset</a>

The SQL queries to analyze this dataset can be found <a href="https://github.com/jowo21/Hospital-Readmissions-Data-Analysis-Project/blob/main/Hospital%20Readmissions%20Data%20Analysis%20Project/HOSPITAL%20READMISSIONS%20EXPLORATORY%20DATA%20MOST%20RECENT.sql">here</a>
<br>
<br>
<br>
<br>

### Executive Summary

The largest contributing factor to a reduction in hospital readmissions is the number of healthcare visits a patient had before being admitted to the hospital. 

<img width="2171" height="1150" alt="image" src="https://github.com/user-attachments/assets/4238031f-6547-4766-8a6a-59d3e1848af1" />

Based on these findings, my recommendation is to increase the patient education and compliance by making their other appointments and seek out care from their primary providers on a regular basis.  There should also be an increase in communication between the hospital and the patient’s primary providers.

If patients would attend at least 3 appointments on average:

Outpatient: Reduces readmissions by 97%

Inpatient: Reduces readmissions by 92%

Emergency: Reduces readmissions by 99%
<br>
<br>
<br>
<br>
### **Other insights**

The next most impactful contributing factor is the type of diagnosis that the patient had.  The patient’s that suffered from Circulatory and Respiratory problems had the largest amount of readmissions This finding was also consistent by primary, secondary, and tertiary diagnoses:
<img width="1140" height="650" alt="image" src="https://github.com/user-attachments/assets/8953aba2-9e10-4115-9158-218c51622756" />

Next, there was an almost linear correlation for the number of days that the patient spent in the hospital and a decrease in their readmissions.  This decrease starts after being admitted for 3 days:
<img width="1002" height="595" alt="image" src="https://github.com/user-attachments/assets/c2073706-eed0-402e-be05-7ee83b8586b3" />

Finally, the patients who had a high A1C (>7%) were twice as likely to be readmitted than those with normal A1Cs
<img width="470" height="693" alt="image" src="https://github.com/user-attachments/assets/b695f65e-4e2a-4148-87f5-a551559de6de" />
<br>
<br>
<br>
<br>
### Recommendations:

Patients who have circulatory, respiratory, and diabetes diagnoses are the most likely to be readmitted.  Suggestion is to increase the care of these patients.  Combined with the data that reflects the time that patients spend in the hospital, it is recommended to seek increased stays for patient’s with these diagnoses.

With the decrease in readmission rates and the time spent in the hospital, it may be appropriate to measure costs for readmissions against the costs of lengthened stays.

Secondary suggestion is to gather other data to further analyze what the next steps should be: readmission rates over time and costs of readmissions over time.

To  capture the patients that are at high risk of readmission, I would suggest setting up an alert in the EHR if the patient has had the following:

- High A1C test (>%)
- Less than 5 healthcare appointments in the last year
- Past or present diagnoses of circulatory, respiratory, or diabetes problems


