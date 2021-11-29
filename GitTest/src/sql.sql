select * from T_MEMBER

select * from t_campaign
select * from t_community
select * from t_location

select * from T_COMMENT

INSERT INTO t_campaign (cam_title, cam_content, reg_date, mb_id, cam_file1) VALUES ('cam_title 1', 'cam_content 1', sysdate, 'test', 'cam_file1 1');

ALTER SEQUENCE T_CAMPAIGN_SEQ INCREMENT BY 1;

DELETE FROM t_campaign

SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'T_CAMPAIGN_SEQ';

ALTER SEQUENCE T_CAMPAIGN_SEQ INCREMENT BY -30;

alter table t_campaign add cam_start date
alter table t_campaign add cam_finish date

update t_campaign set cam_accept = 'Y' where cam_title like '%테스트%'; 

select * from t_campaign where cam_title like '%캠%' and cam_accept = 'Y' order by reg_date desc;

delete from T_COMMENT where comment_seq=136;

alter table t_member drop column mb_grade;

alter table t_member add mb_grade varchar2(50);

select * from t_campaign order by reg_date desc

select * from t_campaign where cam_accept = 'Y' or mb_id = 'test' order by reg_date desc

select * from t_campaign where cam_accept = 'Y' order by reg_date desc

select * from t_news

delete from t_community
delete from t_comment

select * from t_comment

insert into t_community (article_title,article_content,mb_id,article_file1,reg_date,location_num)values('테스트','테스트','test','null',sysdate,18)

