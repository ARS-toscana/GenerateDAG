---
weight: 5
name_excel: "D3_clean_vaccines.xlsx"
description: "This dataset contains all the records of a COVID vaccine, including their imputation and modifications and exclusion criteria. Exclusion criteria must be applied before using the variable in the next steps"
slug: "D3_clean_vaccines"
datetime: 1.6999536e+09
title: D3_clean_vaccines
author: ''
date: '2023-11-14'
categories: []
tags: []
archetype: codebook
output: html_document
---

<script src="/rmarkdown-libs/core-js/shim.min.js"></script>
<script src="/rmarkdown-libs/react/react.min.js"></script>
<script src="/rmarkdown-libs/react/react-dom.min.js"></script>
<script src="/rmarkdown-libs/reactwidget/react-tools.js"></script>
<script src="/rmarkdown-libs/htmlwidgets/htmlwidgets.js"></script>
<link href="/rmarkdown-libs/reactable/reactable.css" rel="stylesheet" />
<script src="/rmarkdown-libs/reactable-binding/reactable.js"></script>
<div class="tab">
<button class="tablinks" onclick="openCity(event, &#39;Metadata&#39;)" id="defaultOpen">Metadata</button>
<button class="tablinks" onclick="openCity(event, &#39;Data Model&#39;)">Data Model</button>
<button class="tablinks" onclick="openCity(event, &#39;Parameters&#39;)">Parameters</button>
<button class="tablinks" onclick="openCity(event, &#39;Example&#39;)">Example</button>
</div>
<div id="Metadata" class="tabcontent">
<div id="htmlwidget-1" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"medatata_name":["Name of the dataset","Content of the dataset","Unit of observation","Dataset where the list of UoOs is fully listed and with 1 record per UoO","How many observations per UoO","Variables capturing the UoO","Primary key","Parameters",null,null,null,null,null,null,null,null,null,null,null,null],"metadata_content":["D3_clean_vaccines","This dataset contains all the records of a COVID vaccine, including their imputation and modifications and exclusion criteria. Exclusion criteria must be applied before using the variable in the next steps","a record of one of the COVID vaccines of interest, as retrieved crudely from the VACCINES table of the CDM; note that there may be duplicates so this table does not have a primary key",null,"1",null,"none",null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"medatata_name","name":"medatata_name","type":"character"},{"id":"metadata_content","name":"metadata_content","type":"character"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"e9ce602dcba3a72bef6c304bf29dce3a"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Data Model" class="tabcontent">
<div id="htmlwidget-2" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-2">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"VarName":["person_id","date","vx_record_date","vx_dose","vx_manufacturer","date_curated","dose_curated","manufacturer_curated","imputed_dose","missing_date","duplicated_records","date_before_start_vax","distance_btw_1_2_doses","distance_btw_2_3_doses","distance_btw_3_4_doses","dose_after_4","manufacturer_not_in_study",null,null,null],"Description":["unique person identifier","date of administration vaccination",null,"vaccination dose number","vaccine manufacturer",null,null,"if it is missing it is stated as \"unk\"","tags records whose date_curated is different from vx_dose","excludes the record if the both date and vx_record_date are missing","eliminates records with same person_id, vx_dose, date_cleaned, manufactirer_cleaned","eliminates records of a covid vaccine administered before the vaccination campaign started","eliminates records of a second dose that is too close to a first dose","eliminates records of a third dose that is too close to a second dose","eliminates records of a fourth dose that is too close to a third dose","eliminates records of a dose higher than 4","eliminats records if a manufacturer is not in the study",null,null,null],"Format":["character","date",null,"character","character","date","integer","character","binary","binary","binary","binary","binary","binary","binary","binary","binary",null,null,null],"Vocabulary":[null,null,null,null,null,null,"1, 2 , 3, 4, ...","pfizer\r\nnovavax\r\nmoderna\r\nastrazeneca\r\njanssen\r\nunk",null,"0 = included\r\n1 = excluded","0 = included\r\n1 = excluded","0 = included\r\n1 = excluded","0 = included\r\n1 = excluded","0 = included\r\n1 = excluded","1 = included\r\n1 = excluded","0 = included\r\n1 = excluded","0 = included\r\n1 = excluded",null,null,null],"Parameters":[null,null,null,null,null,null,null,null,null,null,null,"start of vaccination 27 december 2020 except in UK where it was 6 december 2020","threshold: 14 days","threshold: 28 days",null,"doses higher than 4 censor the follow-up",null,null,null,null],"Notes and examples":[null,"it was called vx_admin_date in the CDM table VACCINES (it was renamed in step 01_01 by CreateConceptSetDataset)","from CDM VACCINES (through ConceptSetDataset)","from CDM VACCINES (through ConceptSetDataset)","from CDM VACCINES (through ConceptSetDataset)",null,"The dose number is imputed for the remaining doses after the exclusion criteria (not the last one) by ordering them by calendar time. All of them, not just the missing ones. doses higher than 4 are inlcluded in this dataset but have dose_after_4 = 1 and are therefroe excluded from the analysis","from ConcePTION_CDM vocabulary v2.2",null,null,null,null,null,null,null,null,null,null,null,null],"Source tables and variables":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Retrieved":["yes","yes","yes","yes","yes",null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Calculated":[null,null,null,null,null,"yes","yes","yes","yes","yes","yes","yes","yes","yes","yes","yes","yes",null,null,null],"Algorithm_id":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"Rule":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"VarName","name":"VarName","type":"character"},{"id":"Description","name":"Description","type":"character"},{"id":"Format","name":"Format","type":"character"},{"id":"Vocabulary","name":"Vocabulary","type":"character"},{"id":"Parameters","name":"Parameters","type":"character"},{"id":"Notes and examples","name":"Notes and examples","type":"character"},{"id":"Source tables and variables","name":"Source tables and variables","type":"logical"},{"id":"Retrieved","name":"Retrieved","type":"character"},{"id":"Calculated","name":"Calculated","type":"character"},{"id":"Algorithm_id","name":"Algorithm_id","type":"logical"},{"id":"Rule","name":"Rule","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"2cc6a7b92f1842d01128d4afa14842df"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Parameters" class="tabcontent">
<div id="htmlwidget-3" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-3">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"parameter in the variable name":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"values":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null],"name of macro":[null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null]},"columns":[{"id":"parameter in the variable name","name":"parameter in the variable name","type":"logical"},{"id":"values","name":"values","type":"logical"},{"id":"name of macro","name":"name of macro","type":"logical"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"f545894952d01490ab535e7af1d88bc2"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>
<div id="Example" class="tabcontent">
<div id="htmlwidget-4" class="reactable html-widget " style="width:auto;height:600px;"></div>
<script type="application/json" data-for="htmlwidget-4">{"x":{"tag":{"name":"Reactable","attribs":{"data":{"person_id":["P0001","P0001","P0001","P0001","P0001","P0002","P0003","P0004","P0004","P0005","P0006","P0006","P0006",null,null,null,null,null,null,null],"date":["2021-01-01T00:00:00Z","2021-01-25T00:00:00Z","2021-04-01T00:00:00Z","2021-06-12T00:00:00Z","2021-06-17T00:00:00Z","2021-08-20T00:00:00Z","2021-07-30T00:00:00Z","2021-05-02T00:00:00Z","2021-07-27T00:00:00Z","2021-05-29T00:00:00Z","2021-05-07T00:00:00Z","2021-06-11T00:00:00Z","2021-07-24T00:00:00Z",null,null,null,null,null,null,null],"vx_record_date":["2021-01-01T00:00:00Z","2021-01-25T00:00:00Z","2021-04-01T00:00:00Z","2021-06-12T00:00:00Z","2021-06-17T00:00:00Z","2021-08-20T00:00:00Z","2021-07-30T00:00:00Z","2021-05-02T00:00:00Z","2021-07-27T00:00:00Z","2021-05-29T00:00:00Z","2021-05-07T00:00:00Z","2021-06-11T00:00:00Z","2021-07-24T00:00:00Z",null,null,null,null,null,null,null],"vx_dose":[1,2,3,4,5,1,1,1,2,2,1,1,2,"NA","NA","NA","NA","NA","NA","NA"],"vx_manufacturer":["pfizer","pfizer","pfizer","pfizer","pfizer","pfizer","pfizer","astrazeneca","astrazeneca","pfizer","pfizer","pfizer","pfizer",null,null,null,null,null,null,null],"date_curated":["2021-01-01T00:00:00Z","2021-01-25T00:00:00Z","2021-04-01T00:00:00Z","2021-06-12T00:00:00Z","2021-06-17T00:00:00Z","2021-08-20T00:00:00Z","2021-07-30T00:00:00Z","2021-05-02T00:00:00Z","2021-07-27T00:00:00Z","2021-05-29T00:00:00Z","2021-05-07T00:00:00Z","2021-06-11T00:00:00Z","2021-07-24T00:00:00Z",null,null,null,null,null,null,null],"dose_curated":[1,2,3,4,5,1,1,1,2,1,1,2,3,"NA","NA","NA","NA","NA","NA","NA"],"manufacturer_curated":["pfizer","pfizer","pfizer","pfizer","pfizer","pfizer","pfizer","astrazeneca","astrazeneca","pfizer","pfizer","pfizer","pfizer",null,null,null,null,null,null,null],"imputed_dose":["FALSE","FALSE","FALSE","FALSE","FALSE","FALSE","FALSE","FALSE","FALSE","TRUE","FALSE","TRUE","TRUE",null,null,null,null,null,null,null],"duplicated_records":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"manufacturer_not_in_study":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"missing_date":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"date_before_start_vax":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"distance_btw_1_2_doses":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"distance_btw_2_3_doses":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"distance_btw_3_4_doses":[0,0,0,0,0,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"],"dose_after_4":[0,0,0,0,1,0,0,0,0,0,0,0,0,"NA","NA","NA","NA","NA","NA","NA"]},"columns":[{"id":"person_id","name":"person_id","type":"character"},{"id":"date","name":"date","type":"Date"},{"id":"vx_record_date","name":"vx_record_date","type":"Date"},{"id":"vx_dose","name":"vx_dose","type":"numeric"},{"id":"vx_manufacturer","name":"vx_manufacturer","type":"character"},{"id":"date_curated","name":"date_curated","type":"Date"},{"id":"dose_curated","name":"dose_curated","type":"numeric"},{"id":"manufacturer_curated","name":"manufacturer_curated","type":"character"},{"id":"imputed_dose","name":"imputed_dose","type":"character"},{"id":"duplicated_records","name":"duplicated_records","type":"numeric"},{"id":"manufacturer_not_in_study","name":"manufacturer_not_in_study","type":"numeric"},{"id":"missing_date","name":"missing_date","type":"numeric"},{"id":"date_before_start_vax","name":"date_before_start_vax","type":"numeric"},{"id":"distance_btw_1_2_doses","name":"distance_btw_1_2_doses","type":"numeric"},{"id":"distance_btw_2_3_doses","name":"distance_btw_2_3_doses","type":"numeric"},{"id":"distance_btw_3_4_doses","name":"distance_btw_3_4_doses","type":"numeric"},{"id":"dose_after_4","name":"dose_after_4","type":"numeric"}],"sortable":false,"searchable":true,"pagination":false,"highlight":true,"bordered":true,"striped":true,"style":{"maxWidth":1800},"height":"600px","dataKey":"8ed4fac44906b1d293642fa9eb4cd73f"},"children":[]},"class":"reactR_markup"},"evals":[],"jsHooks":[]}</script>
</div>