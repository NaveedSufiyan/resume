--Execution script
--000165953; Ibilling Recurring Payment Issue for child Group 
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS='C', LAST_UPDATED_DATE = sysdate, comments='Manually cancelling the child recurring payment' WHERE recurring_payment_id='53964' AND group_or_pfid=('VY993A','O0747B','O0747C','O0747D');
UPDATE IBILLING_EMP_RECURRING_PAYMENT SET STATUS='C', LAST_UPDATE_DATE = sysdate, comments='Manually cancelling the child recurring payment' WHERE recurring_payment_id='53964' AND client_id='000165953';
COMMIT;

--Rollback script
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS='A' WHERE recurring_payment_id='53964' AND group_or_pfid=('VY993A','O0747B','O0747C','O0747D');
UPDATE IBILLING_EMP_RECURRING_PAYMENT SET STATUS='A' WHERE recurring_payment_id='53964' AND client_id='000165953';
COMMIT;



Execution script
--000165953; Ibilling Recurring Payment Issue for child Group 
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS = 'C', LAST_UPDATED_DATE = SYSDATE, COMMENTS = 'Manually cancelling the child recurring payment' WHERE RECURRING_PAYMENT_ID = '53964' AND GROUP_OR_PFID IN ('VY993A', 'O0747B', 'O0747C', 'O0747D');
UPDATE IBILLING_EMP_RECURRING_PAYMENT SET STATUS = 'C', LAST_UPDATE_DATE = SYSDATE, COMMENTS = 'Manually cancelling the child recurring payment' WHERE RECURRING_PAYMENT_ID = '53964' AND CLIENT_ID = '000165953';
COMMIT;


-- Rollback: Re-activate child group recurring payments 
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS = 'A' WHERE RECURRING_PAYMENT_ID = '53964' AND GROUP_OR_PFID IN ('VY993A', 'O0747B', 'O0747C', 'O0747D');
UPDATE IBILLING_EMP_RECURRING_PAYMENT SET STATUS = 'A' WHERE RECURRING_PAYMENT_ID = '53964' AND CLIENT_ID = '000165953';
COMMIT;


PArent: O0747A

TB321A
O0747B
O0747C
O0747D
VY993A


Required Querry :
--Execution script
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS = 'C', LAST_UPDATED_DATE = SYSDATE, COMMENTS = 'Manually cancelling the child recurring payment' WHERE RECURRING_PAYMENT_ID = '53964' AND GROUP_OR_PFID IN ('VY993A', 'O0747B', 'O0747C', 'O0747D');
--Rollback script
UPDATE IBILLING_EMP_RCRNG_PMT_GRPPF SET STATUS = 'A' WHERE RECURRING_PAYMENT_ID = '53964' AND GROUP_OR_PFID IN ('VY993A', 'O0747B', 'O0747C', 'O0747D');



--FOR RAISSING DMR REQUEST WE NEED TO GO TO: 
https://servicenow.centene.com/requestcentral?id=sc_cat_item&table=sc_cat_item&sys_id=d4a7c5001bef2150cb3fcb751a4bcb07&recordUrl=com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1&sysparm_id=d4a7c5001bef2150cb3fcb751a4bcb07

--THEN FILL THE FORM DETAILS:
For HNEMP:
Update data in "HNW_APP_P" production database schema
Additional Info:
Please execute the Update scripts in the following HNWEB_PRD database : hnw_app_p
The connection string is:
jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=oflc1exa-scanp.centene.com)(PORT=1521))(ADDRESS=(PROTOCOL=TCP)(HOST=oflc1exa-scanp.centene.com)(PORT=1521))(FAILOVER=on)(LOAD_BALANCE=on))(CONNECT_DATA=(SERVICE_NAME=hnw_app_p)))


--AFTER ORDERING WE NEED TO FILL FORM:
Offcycle Form:
New form - https://cnet.centene.com/sites/WebServicesKnowledgeBase/Lists/NonStandard%20Deployment%20Request%20List/NewForm.aspx?RootFolder
 
Filled Form: https://cnet.centene.com/sites/WebServicesKnowledgeBase/Lists/NonStandard%20Deployment%20Request%20List/NewForm.aspx?RootFolder
 