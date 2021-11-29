select * from T_MEMBER

select* from T_NEWS

// 전체 시퀀스 조회
SELECT * FROM USER_SEQUENCES  

// 시퀀스 상승
t_news_seq.nextval

insert into t_news(news_seq,news_title,news_content,mb_id,news_file1,news_file2,news_file3,reg_date,article_cnt,news_url) values('t_news_seq.nextval','[단독]  사용후핵연료 처리기술 연구사업 종결 아닌 재개로 돌아서나','정부가
						8000억원을 투입하고 지난해 중단시킨 사용후핵연료 파이로프로세싱과 소듐냉각고속로(SFR) 국책 연구개발사업의
						재개...','junyoung7798','','','','2021-11-19 04:59',1,'https://www.hani.co.kr/arti/society/environment/1019808.html')
						
select* from t_news
select count(*) from t_news
insert into t_news(news_seq,news_title,news_content,mb_id) values(t_news_seq.nextval,'제목','내용','junyoung7798')

update t_news  set news_url= 'https://www.hani.co.kr/arti/society/environment/1019808.html'
update t_member set mb_point = 999 where mb_id = 'admin'
where mb_id='junyoung7798'

select count(*) from t_community
select count(*) from t_campaign where cam_accept='Y'
select * from t_campaign
select * from t_member
select * from t_community
select * from t_news
select * from t_news where news_title like '%이번%' order by reg_date desc

delete from t_news where news_seq=65