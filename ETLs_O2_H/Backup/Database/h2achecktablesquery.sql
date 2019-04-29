SELECT id_visaApplications, case_number, primary_crop, year, month,
       day_of_week, employer_name, job_title, agent_attorney_name, lawfirm_name,
       nature_of_temporary_need, swa_name, worksite_city, NBR_WORKERS_REQUESTED, date_raw AS start_date
FROM f_visaapplications
JOIN d_casenumber casenumber on f_visaapplications.id_caseNumber = casenumber.id_caseNumber
JOIN d_crop crop on f_visaapplications.id_crop = crop.id_crop
JOIN d_date date2 on f_visaapplications.id_certification_begin_date = date2.id_date
JOIN d_employer employer on f_visaapplications.id_employer = employer.id_employer
JOIN d_job job on f_visaapplications.id_Job = job.id_job
JOIN d_lawagent dl on f_visaapplications.id_lawagent = dl.id_lawagent
JOIN d_lawfirm lawfirm on f_visaapplications.id_lawfirm = lawfirm.id_lawfirm
JOIN d_reason r on f_visaapplications.id_reason = r.id_reason
JOIN d_swa swa on f_visaapplications.id_SWA = swa.id_SWA
JOIN d_worksite dw on job.id_worksite = dw.id_worksite
