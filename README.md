# Hospital Readmissions Data Analysis Project

Hospital readmissions, particularly unplanned ones, place a significant burden on healthcare systems, patients, and insurers. Frequent readmissions can be symptomatic of gaps in the quality of care, inadequate follow-up, or poor management of chronic conditions. Understanding the key drivers of readmission is essential for improving patient outcomes and reducing operational costs.

This project aims to analyze a hospital dataset to identify patterns and predictors of patient readmissions.

### **Project Objectives**

- Provide actionable insights to healthcare stakeholders to improve care transitions and patient follow-up.
- Identify opportunities for personalized care planning based on patient characteristics and medical history.

### **Stakeholders**

- **Hospital Administrators:** Interested in reducing readmission rates to avoid penalties and improve care efficiency.
- **Healthcare Providers & Clinicians:** Seek to understand patient risk profiles and adapt treatment and discharge plans accordingly.
- **Quality Improvement Teams:** Focused on identifying gaps in care that lead to avoidable readmissions.
- **Patients and Advocacy Groups:** Want better continuity of care and health outcomes post-discharge.

### About the Dataset

The dataset includes information such as age range, time spent in hospital, number of lab procedures, medications administered, history of previous visits (inpatient, outpatient, emergency), provider's medical specialty, various diagnostic codes, glucose testing, changes in diabetes medication, and the readmission status. 

This dataset is composed of 25000 rows and 17 columns.
Link:
https://www.kaggle.com/datasets/dubradave/hospital-readmissions

### Executive Summary

The largest contributing factor to a reduction in hospital readmissions is the number of healthcare visits a patient had before being admitted to the hospital.  There was no distinction between what type of healthcare visit the patient attended (Outpatient, Inpatient or Emergency), but once the patient, on average, had about two healthcare visits prior to being admitted to the hospital, their readmission rates dramatically decreased.

<img width="2171" height="1150" alt="image" src="https://github.com/user-attachments/assets/4238031f-6547-4766-8a6a-59d3e1848af1" />


### **Other insights**

The next most impactful contributing factor is the type of diagnosis that the patient had.  The patient’s that suffered from Circulatory and Respiratory problems had the largest amount of readmissions This finding was also consistent by primary, secondary, and tertiary diagnoses:
<img width="1140" height="650" alt="image" src="https://github.com/user-attachments/assets/8953aba2-9e10-4115-9158-218c51622756" />

Next, there was an almost linear correlation for the number of days that the patient spent in the hospital and a decrease in their readmissions.  This decrease starts after being admitted for 3 days:
<img width="1002" height="595" alt="image" src="https://github.com/user-attachments/assets/c2073706-eed0-402e-be05-7ee83b8586b3" />

Finally, the patients who had a high A1C (>7%) were twice as likely to be readmitted than those with normal A1Cs
<img width="470" height="693" alt="image" src="https://github.com/user-attachments/assets/b695f65e-4e2a-4148-87f5-a551559de6de" />

### Insights and Recommendations:

Based on the number and type of visits before patient’s first hospital visit, there is a higher number of readmission rates that contribute to a lower number of healthcare visits prior to admission.  My suggestion is that the hospital should focus on educating the patient on overall compliance by making their other appointments and seek out care from their primary providers on a regular basis.  There should also be an increase in communication between the hospital and the patient’s primary providers if possible to better discuss the patient’s needs and care.

Patients who have circulatory, respiratory, and diabetes diagnoses are the most likely to be readmitted.  Suggestion is to increase the care of these patients.  Combined with the data that reflects the time that patients spend in the hospital, it is recommended to seek increased stays for patient’s with these diagnoses.

With the decrease in readmission rates and the time spent in the hospital, it may be appropriate to measure costs for readmissions against the costs of lengthened stays.

Secondary suggestion is to gather other data to further analyze what the next steps should be: readmission rates over time and costs of readmissions over time.

To  capture the patients that are at high risk of readmission, I would suggest setting up an alert in the EHR if the patient has had the following:

- High A1C test (>%)
- Less than 5 healthcare appointments in the last year
- Past or present diagnoses of circulatory, respiratory, or diabetes problems


