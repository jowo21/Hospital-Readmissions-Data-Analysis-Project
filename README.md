# Analysis and Insights to Reduce Patient Hospital Readmissions

## Background and Problem Statement

Hospital readmissions, particularly unplanned ones, place a significant burden on healthcare systems, patients, and insurers. Frequent readmissions can be symptomatic of gaps in the quality of care, inadequate follow-up, or poor management of chronic conditions. **Understanding the key drivers of readmission is essential for improving patient outcomes and reducing operational costs.**

Urban General Hospital has been experiencing a rising rate of unplanned readmissions, which is contributing to increased operational costs and potential penalties from Medicare. **The Director of Care Management needs to identify the key drivers of these readmissions in order to develop targeted interventions**. The lack of data-driven insight is limiting the hospital’s ability to proactively manage high-risk patients and improve care continuity.

<br>
<br>
<br>
<br>



## **Objectives**

- **Provide actionable insights to healthcare stakeholders** to improve care transitions and patient follow-up.
- **Identify opportunities for personalized care planning** based on patient characteristics and medical history.

<br>
<br>





## About the Dataset and SQL Queries

The table structure and dictionary can be found [here](https://github.com/jowo21/Insights-and-Analysis-to-Reduce-Patient-Hospital-Readmissions/blob/main/Hospital%20Readmissions%20Data%20Analysis%20Project/about%20dataset.md)


The SQL queries to analyze this dataset can be found <a href="https://github.com/jowo21/Hospital-Readmissions-Data-Analysis-Project/blob/main/Hospital%20Readmissions%20Data%20Analysis%20Project/HOSPITAL%20READMISSIONS%20EXPLORATORY%20DATA%20MOST%20RECENT.sql">here</a>

<br>
<br>
<br>
<br>



## Executive Summary

### Overview

Unplanned hospital readmissions represent both a quality-of-care challenge and a significant financial risk for Urban General Hospital, particularly given Medicare readmission penalties and rising operational costs. This analysis examined 25,000 patient records to identify essential drivers of readmissions that can be addressed through care management interventions as opposed to purely clinical treatment changes.

### Prior Healthcare Visit Analysis

The most impactful and actionable finding is the **strong inverse relationship between pre-admission healthcare engagement and hospital readmissions**. Patients who had **at least one healthcare visit of any type (outpatient, inpatient, or emergency)** prior to their admission experienced an **average 78% reduction in readmission rates**, with reductions as high as **87–89%** for outpatient and emergency visits. This suggests that **early engagement, continuity of care, and system touchpoints prior to acute hospitalization are the strongest levers available to Care Management**.

### Secondary relevant drivers that contribute to Readmissions

- **Diagnosis type**, with circulatory, respiratory, and diabetes-related conditions showing consistently higher readmission rates across primary, secondary, and tertiary diagnoses.
- **Length of stay**, where patients hospitalized fewer than three days experienced higher readmissions, indicating possible premature discharge or insufficient stabilization.
- **Poor glycemic control**, as patients with A1C levels greater than 7% were more than twice as likely to be readmitted.

Collectively, these findings indicate that **readmissions are less a function of isolated inpatient events and more a reflection of gaps in longitudinal care coordination, chronic disease management, and transition planning**. From a Care Management perspective, the opportunity lies in **earlier patient identification, proactive outpatient engagement, targeted chronic disease pathways, and tighter integration with primary and specialty care providers**.

### Initial Recommendation

By operationalizing these insights through EHR alerts, care navigator workflows, and strengthened outpatient partnerships, Urban General Hospital can meaningfully reduce preventable readmissions while improving patient outcomes and protecting reimbursement.

<br>
<br>
<br>
<br>

## Insights Deep Dive

With an overall average readmission rate of 47%, the largest contributing factor that will lead to a reduction in hospital readmissions is increasing the number of healthcare visits a patient had before being admitted to the hospital. 

The amount of readmissions significantly drop after the patient has had 1 appointment of any type.

<img width="1750" height="1049" alt="image" src="https://github.com/user-attachments/assets/e269c521-0218-4dcc-8350-03c2cb286dba" />


If patients would attend at least 1 appointment before being admitted to the hospital:

Outpatient: Reduces readmissions by 87%

Inpatient: Reduces readmissions by 59%

Emergency: Reduces readmissions by 89%

(average of 78% overall)

<br>
<br>

The next most impactful contributing factor to readmissions is the **identification of the type of diagnosis that the patient had.**  The patients that suffered from **Circulatory and Respiratory** problems had the **largest amount of readmissions** This finding was also consistent by categorization of primary, secondary, and tertiary diagnoses: 

<img width="1989" height="1090" alt="image" src="https://github.com/user-attachments/assets/436e7a71-ba30-4f45-9ead-2801d2a90028" />

<br>
<br>

Next, there was a significant **linear decline** of readmisisons for patients that spent **3 days or more** in the hospital:

<img width="1719" height="1036" alt="image" src="https://github.com/user-attachments/assets/858fb29c-ac57-4eca-842e-b5661b4020d4" />


<br>
<br>

Finally, the patients who had a high A1C (>7%) were more than twice as likely to be readmitted than those with normal A1C readings.

<img width="855" height="779" alt="image" src="https://github.com/user-attachments/assets/36933cb0-f1a7-4389-aff5-37397e9e280a" />

<br>
<br>
<br>
<br>


## Recommendations


### **1: Increase Pre-Admission Patient Engagement**

**Objective:**

Reduce unplanned readmissions by increasing patient engagement with the healthcare system prior to acute hospital admission.

**Actions:**

- Implement Care Management–led outreach programs targeting patients with **no documented healthcare visits in the prior 12 months**.
- Partner with Primary Care and Outpatient Services to:
    - Schedule preventive or follow-up visits for high-risk patients.
    - Reinforce appointment adherence through reminder calls, texts, and care navigator follow-ups.
- Embed appointment history visibility into Care Management dashboards to identify disengaged patients early.

**Expected Outcomes:**

- Reduction in readmissions by up to **78% among previously disengaged patients**.
- Improved continuity of care and stronger patient–provider relationships.
- Lower avoidable utilization of inpatient and emergency services.

---

### **2: Target High-Risk Diagnoses with Specialized Care Pathways**

**Goal:**

Decrease readmissions among patients with circulatory, respiratory, and diabetes-related conditions.

**Actions:**

- Develop condition-specific care management pathways that include:
    - Early consults with case management for these diagnoses.
    - Standardized discharge education tailored to each condition.
    - Scheduled outpatient follow-ups prior to discharge.
- Coordinate with specialty clinics (cardiology, pulmonology, endocrinology) to ensure timely post-discharge access.

**Expected Outcomes:**

- Reduced repeat admissions for high-impact diagnostic groups.
- More consistent post-discharge follow-up and medication adherence.

---

### **3: Optimize Length of Stay for High-Risk Patients**

**Goal:**

Balance inpatient length of stay with readmission risk to avoid premature discharge.

**Actions:**

- Flag high-risk patients (based on diagnosis, appointment history, and A1C levels) for **enhanced discharge readiness assessment**.
- Collaborate with hospitalists and nursing leadership to ensure:
    - Adequate stabilization prior to discharge.
    - Completion of medication reconciliation and patient education.
- Evaluate readmission costs versus extended length-of-stay costs to guide policy decisions.

**Expected Outcomes:**

- Fewer early readmissions linked to insufficient stabilization.
- Better discharge preparedness and patient confidence.
- Net cost savings when readmission penalties outweigh marginal inpatient costs.

---

### **4: Strengthen Diabetes Management and Glycemic Control**

**Goal:**

Reduce readmissions associated with poor diabetes control.

**Actions:**

- Trigger automatic Care Management consults for patients with **A1C > 7%**.
- Coordinate inpatient diabetes education and ensure:
    - Clear discharge instructions.
    - Rapid outpatient endocrinology or primary care follow-up.
- Monitor A1C trends post-discharge through integrated EHR reporting.

**Expected Outcomes:**

- Lower readmission rates among diabetic patients.
- Improved long-term glycemic control.
- Reduced complications driving repeat hospitalizations.

---

### **5: Implement an EHR-Based Readmission Risk Alert System**

**Goal:**

Enable proactive identification of patients at high risk for readmission.

**Actions:**

Configure EHR alerts for patients meeting any of the following criteria:

- Fewer than one healthcare appointment in the past year.
- A1C greater than 7%.
- History of circulatory, respiratory, or diabetes diagnoses.

Alerts should prompt:

- Automatic Care Management review.
- Early discharge planning.
- Post-discharge follow-up scheduling.

**Expected Outcomes:**

- Earlier intervention for high-risk patients.
- More efficient allocation of Care Management resources.
- Measurable reduction in preventable readmissions.

###







