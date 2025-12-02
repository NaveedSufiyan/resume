--Member Details with Member or Medicaid ID--
SELECT * FROM nwebown.user_member um
INNER JOIN nwebown.member_profile mp on um.user_member_id = mp.user_member_id
WHERE mp.MEDICAID_NBR='U9695062301' ;

--Member Details with Email ID--
SELECT * FROM nwebown.user_member um
INNER JOIN nwebown.member_profile mp on um.user_member_id = mp.user_member_id
WHERE um.email_addr = 'jamydietz94@yahoo.com' ;
--mp.medicaid_nbr = 'R1073403048' ;

--Email fake data--
select * from nwebown.user_member where email_addr ='zellalburrows@gmail.com';

--Error ID data--
SELECT * FROM nwebown.error_log e
INNER JOIN nwebown.error_log_detail ed ON e.ERROR_LOG_ID = ed.ERROR_LOG_ID
--where e.user_id ='mproulx@cptdinc.com' order by e.error_ts desc;
WHERE e.ERROR_LOG_ID = '201501953';

--Email ID Error Log--
SELECT * FROM nwebown.error_log e
INNER JOIN nwebown.error_log_detail ed ON e.ERROR_LOG_ID = ed.ERROR_LOG_ID
where e.user_id ='lmendell28@gmail.com' order by e.error_ts desc;


SELECT * FROM NWEBOWN.ERROR_LOG ; -- this is the error log table

--<PROVIDER>--

SELECT * FROM NWEBOWN.USER_PROVIDER
--FIRST_NAME ="NANCY" AND LAST_NAME = "PENA";
WHERE EMAIL_ADDR=lower('aaron.smith@sgopro.com');--
--order by CREATED_TIMESTAMP desc ;--

SELECT up.USER_STATUS, up.FIRST_NAME, up.LAST_NAME, up.EMAIL_ADDR, mb.MAILBOX_ID, up.USER_PROVIDER_ID, pp.PROVIDER_PROFILE_ID, pp.TIN, pp.PLAN_ID
FROM NWEBOWN.USER_PROVIDER up, NWEBOWN.PROVIDER_PROFILE pp, NWEBOWN.MAILBOX mb
WHERE up.USER_PROVIDER_ID = pp.USER_PROVIDER_ID
AND mb.USER_ID = up.USER_PROVIDER_ID
AND mb.MAILBOX_TYPE = 'Provider'
AND up.EMAIl_ADDR='apptscwp@cottonwoodpeds.com'
ORDER BY up.LAST_NAME;

SELECT *FROM nwebown.user_provider up INNER JOIN nwebown.provider_profile pp on up.user_provider_id = pp.user_provider_id
WHERE pp.TIN in ('591485677');


select * from NWEBOWN.INVITE_VENDORPORAL_USER
where EMAIL_ADDR = 'aaron.smith@sgopro.com';

SELECT * FROM NWEBOWN.USER_MEMBER
where email_addr = 'dianetalbott@gmail.com';


select * from nwebown.user_provider where email_addr ='dburchell@th4c.org';

SELECT * FROM NWEBOWN.USER_PROVIDER WHERE EMAIL_ADDR = ('dburchell@th4c.org');

select * from NWEBOWN.ERROR_LOG
WHERE error_ts >= trunc(sysdate)
and DESCRIPTION LIKE '404 : [<!doctype html>%'

select * from NWEBOWN.SUPPORT_AD_ROLE
where plan_ID IN ('2000')
and ad_Role != 'CN=STL_WEB_SUPPORT,OU=STLOUIS,OU=MISSOURI,DC=CENTENE,DC=COM'
and ad_Role != 'CN=CORP_WEB_SUPPORT,OU=LDAP,DC=CENTENE,DC=COM'






