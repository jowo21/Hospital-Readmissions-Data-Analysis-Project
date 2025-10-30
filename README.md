# Analysis and Insights to Reduce Patient Hospital Readmissions

### Background and Problem Statement

Hospital readmissions, particularly unplanned ones, place a significant burden on healthcare systems, patients, and insurers. Frequent readmissions can be symptomatic of gaps in the quality of care, inadequate follow-up, or poor management of chronic conditions. **Understanding the key drivers of readmission is essential for improving patient outcomes and reducing operational costs.**

Urban General Hospital has been experiencing a rising rate of unplanned readmissions, which is contributing to increased operational costs and potential penalties from Medicare. **The Director of Care Management needs to identify the key drivers of these readmissions in order to develop targeted interventions**. The lack of data-driven insight is limiting the hospital’s ability to proactively manage high-risk patients and improve care continuity.

<br>
<br>

---

### **Objectives**

- **Provide actionable insights to healthcare stakeholders** to improve care transitions and patient follow-up.
- **Identify opportunities for personalized care planning** based on patient characteristics and medical history.

<br>
<br>

---



### About the Dataset and SQL Queries

The table structure and dictionary can be found [here](https://github.com/jowo21/Insights-and-Analysis-to-Reduce-Patient-Hospital-Readmissions/blob/main/Hospital%20Readmissions%20Data%20Analysis%20Project/about%20dataset.md)


The SQL queries to analyze this dataset can be found <a href="https://github.com/jowo21/Hospital-Readmissions-Data-Analysis-Project/blob/main/Hospital%20Readmissions%20Data%20Analysis%20Project/HOSPITAL%20READMISSIONS%20EXPLORATORY%20DATA%20MOST%20RECENT.sql">here</a>

<br>
<br>

---

### Executive Summary

With an overall average readmission rate of 47%, the largest contributing factor that will lead to a reduction in hospital readmissions is increasing **the number of healthcare visits a patient had before being admitted to the hospital**.

<img width="3040" height="1127" alt="image" src="https://github.com/user-attachments/assets/9e7f5f2b-b5f2-4b47-9e25-3b3a93603466" />


Based on these findings, my recommendation is to increase patient education and compliance for making their other appointments and seek out care from their primary providers on a regular basis.  There should also be an increase in communication between the hospital and the patient’s primary providers to help facilitate this plan.

<br>

If patients would attend at least 1 appointment before being admitted to the hospital:

Outpatient: Reduces readmissions by 87%

Inpatient: Reduces readmissions by 59%

Emergency: Reduces readmissions by 89%

<br>
<br>

---

### **Other insights**

The next most impactful contributing factor to readmissions is the correlation of the type of diagnosis that the patient had.  The patient’s that suffered from Circulatory and Respiratory problems had the largest amount of readmissions This finding was also consistent by categorization of primary, secondary, and tertiary diagnoses: 
<img width="3267" height="1250" alt="image" src="https://github.com/user-attachments/assets/49ab9348-7893-4335-8aaa-6024a9a8728d" />


Next, there was an almost linear correlation for the number of days that the patient spent in the hospital and a decrease in their readmissions.  This decrease starts after being admitted for 3 days:
<img width="3385" height="1170" alt="image" src="https://github.com/user-attachments/assets/a51ecea1-d3fe-4b2f-9757-0a604e56ba2f" />


Finally, the patients who had a high A1C (>7%) were more than twice as likely to be readmitted than those with normal A1C readings.
<img width="855" height="779" alt="image" src="https://github.com/user-attachments/assets/a09c6221-755d-4fba-8dd3-1e28e73a0ac3" />

<br>
<br>

---

### Recommendations:

My first suggestion is to increase the care of the patients who suffer from circulatory, respiratory, and diabetes since these patients have a significant impact on readmissions.  Combined with the data that reflects the time that patients spend in the hospital, it is recommended to seek increased stays for patient’s with these diagnoses.

With the decrease in readmission rates and the time spent in the hospital, it may be appropriate to measure costs for readmissions against the costs of lengthened stays.

I also suggest gathering more data to further analyze what the next steps should be.  Analyzing readmission rates over time and costs of readmissions over time can give further key insights on what other steps can be taken.

To  identify the patients that are at high risk of readmission, I would suggest setting up an alert in the EHR if the patient has had the following:

- Less than 1 healthcare appointments in the last year
- High A1C test (>7%)
- Past or present diagnoses of circulatory, respiratory, or diabetes problems


