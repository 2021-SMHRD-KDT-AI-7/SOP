select * from T_MEMBER

select* from T_NEWS

// ��ü ������ ��ȸ
SELECT * FROM USER_SEQUENCES  

// ������ ���
t_news_seq.nextval

insert into t_news(news_seq,news_title,news_content,mb_id,news_file1,news_file2,news_file3,reg_date,article_cnt,news_url) values('t_news_seq.nextval','[�ܵ�]  ������ٿ��� ó����� ������� ���� �ƴ� �簳�� ���Ƽ���','���ΰ�
						8000����� �����ϰ� ������ �ߴܽ�Ų ������ٿ��� ���̷����μ��̰� �ҵ�ð���ӷ�(SFR) ��å �������߻����
						�簳...','junyoung7798','','','','2021-11-19 04:59',1,'https://www.hani.co.kr/arti/society/environment/1019808.html')
						
select* from t_news
select count(*) from t_news
insert into t_news(news_seq,news_title,news_content,mb_id) values(t_news_seq.nextval,'����','����','junyoung7798')

update t_news  set news_url= 'https://www.hani.co.kr/arti/society/environment/1019808.html'
update t_member set mb_point = 999 where mb_id = 'admin'
where mb_id='junyoung7798'

select count(*) from t_community
select count(*) from t_campaign where cam_accept='Y'
select * from t_campaign
select * from t_member
select * from t_community
select * from t_news
select * from t_news where news_title like '%�̹�%' order by reg_date desc

delete from t_news where news_seq=65