#!/usr/bin/env python
# coding: utf-8

# In[1]:


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

data = {}

for title in article_title:   
    name = title.find_all('a')[0].text
    url = 'http:'+title.find('a')['href']
    data[name] = url
    
with open(os.path.join(BASE_DIR, 'news.json'), 'w+',encoding='utf-8') as json_file:
    json.dump(data, json_file, ensure_ascii = False, indent='\t')

print('뉴스기사 스크래핑 끝')


# In[ ]:




