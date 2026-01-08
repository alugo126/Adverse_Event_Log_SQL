--Total Adverse Events

SELECT
  COUNT(*) AS total_adverse_events

FROM `portfolio-projects-483722.clinical_data.adverse_event_log`



--Adverse Events by Site

SELECT
  site,
  COUNT(*) AS ae_count

FROM
  `portfolio-projects-483722.clinical_data.adverse_event_log`

GROUP BY site

ORDER BY ae_count DESC;



--Adverse Events by Severity

SELECT
  severity,
  COUNT(*) AS ae_count

FROM
  `portfolio-projects-483722.clinical_data.adverse_event_log`

GROUP BY 
  Severity

ORDER BY
  ae_count DESC;





--Serious Adverse Events (SAEs) by Site

SELECT
  site,
  COUNT(*) AS sae_count

FROM
`portfolio-projects-483722.clinical_data.adverse_event_log`

WHERE serious = true

GROUP BY
  site

ORDER BY
  sae_count DESC;




--Probable Treatment-Related Adverse Events

SELECT
  site,
  COUNT(*) as probable_related_ae

FROM
  `portfolio-projects-483722.clinical_data.adverse_event_log`

WHERE 
  Relatedness = 'Probable'

GROUP BY 
  site

ORDER BY 
  probable_related_ae DESC;




--Top Adverse Events Terms

SELECT
  ae_term,
  COUNT(*) AS term_count

FROM
  `portfolio-projects-483722.clinical_data.adverse_event_log`

GROUP BY 
  ae_term

ORDER BY
  term_count DESC

LIMIT 5;



