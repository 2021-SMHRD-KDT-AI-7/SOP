import requests
from bs4 import BeautifulSoup
import json
import os
import sys
from inspect import getsourcefile
from os.path import abspath

BASE_DIR = os.path.dirname(os.path.abspath("__file__"))
print('뉴스기사 스크래핑 시작')

req = requests.get('https://www.hani.co.kr/arti/society/environment/home01.html')
req.encoding= None
html = req.content
soup = BeautifulSoup(html, 'html.parser')

# 기사 제목
article_title = soup.select('h4.article-title')
article_content = soup.select('p.article-prologue')

titleData = {}
contentData = {}

for title1 in article_title:   
    name = title1.find_all('a')[0].text
    url = 'http:'+title1.find('a')['href']
    titleData[name] = url
    
for title2 in article_content:   
    name = title2.find_all('a')[0].text
    url = 'http:'+title2.find('a')['href']
    contentData[name] = url
    
with open(os.path.join(BASE_DIR, 'news.json'), 'w+',encoding='utf-8') as json_file:
    json.dump(data, json_file, ensure_ascii = False, indent='\t')

print('뉴스기사 스크래핑 끝')
