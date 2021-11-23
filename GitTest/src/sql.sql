select * from T_MEMBER

select * from t_campaign
select * from t_community

INSERT INTO t_campaign (cam_title, cam_content, reg_date, mb_id, cam_file1) VALUES ('cam_title 1', 'cam_content 1', sysdate, 'test', 'cam_file1 1');

ALTER SEQUENCE T_CAMPAIGN_SEQ INCREMENT BY 1;

DELETE FROM t_campaign

SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'T_CAMPAIGN_SEQ';

ALTER SEQUENCE T_CAMPAIGN_SEQ INCREMENT BY -30;

alter table t_campaign add cam_start date
alter table t_campaign add cam_finish date



