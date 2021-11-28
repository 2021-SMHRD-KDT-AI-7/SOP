import requests
from bs4 import BeautifulSoup
import json
import os
import sys
from inspect import getsourcefile
from os.path import abspath
import cx_Oracle

req = requests.get('https://www.hani.co.kr/arti/society/environment/home01.html')
req.encoding= None
html = req.content
soup = BeautifulSoup(html, 'html.parser')

############ 크롤링 데이터 수집 지정 ############
# 기사 제목
article_title = soup.select('h4.article-title>a')
# 기사 내용
article_content = soup.select('p.article-prologue>a')
# 기사 업로드 날짜
upload_date = soup.select('span.date')
# 이미지 주소태그(최초 1회 실행 후 재실행 금지!)
img = soup.select('span.article-photo>a img')
# a 태그 + img 불러오기
a_tag = soup.select('span.article-photo>a')
# 삭제 이미지 주소태그
delete_img = soup.select('span.article-photo>a img')
#####

############ 수집 데이터 리스트에 저장 ############
title=[]
for i in range(len(article_title)):
    title.append(article_title[i].text)
content=[]
for i in range(len(article_content)):
    content.append(article_content[i].text)
date=[]
for i in range(len(upload_date)):
    date.append(upload_date[i].text)
tag=[]
for i in a_tag:
    tag.append("https://www.hani.co.kr"+i['href'])
img_url=[]
for i in img:
    img_url.append("https:"+i['src'])
#####

############ 인덱스마다 하나의 리스트에 담기 ############
for i in range(1):
    list=[]
    list.append(title[i])
    list.append(content[i])
    list.append(date[i])
    list.append(tag[i])
    list.append(img_url[i])
#####

############ DB Connection ############
############ Query insert ############

conn=cx_Oracle.connect("campus_c_c_1111","smhrd3","project-db-stu.ddns.net:1524/xe")
cur=conn.cursor()
sql="insert into t_news(news_title,news_content,reg_date, news_url, img_url) values(:1,:2,:3,:4,:5)"
cur.execute(sql,list)
print(cur.rowcount)
cur.close()
conn.commit()
conn.close()


#BASE_DIR = os.path.dirname(os.path.abspath("__file__"))
#print('뉴스기사 스크래핑 시작')

#req = requests.get('https://www.hani.co.kr/arti/society/environment/home01.html')
#req.encoding= None
#html = req.content
#soup = BeautifulSoup(html, 'html.parser')

# 기사 제목
#article_title = soup.select('h4.article-title')
#article_content = soup.select('p.article-prologue')

#titleData = {}
#contentData = {}
#data = {}

#for title1 in article_title:   
#    name = title1.find_all('a')[0].text #db title 컬럼명
#    url = 'http:'+title1.find('a')['href'] # db url 컬럼명
#    data[name] = url
    
#for title2 in article_content:   
#    name = title2.find_all('a')[0].text
#    url = 'http:'+title2.find('a')['href']
#    data[name] = url
    
#with open(os.path.join(BASE_DIR, 'news.json'), 'w+',encoding='utf-8') as json_file:
#    json.dump(data, json_file, ensure_ascii = False, indent='\t')


#print('뉴스기사 스크래핑 끝')
