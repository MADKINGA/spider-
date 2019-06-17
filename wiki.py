import requests
from bs4 import BeautifulSoup

header={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'}
r=requests.get("https://en.wiktionary.org/wiki/Wikipedia",headers=header)
html=r.text
bsObj=BeautifulSoup(html)

for link in bsObj.findAll("a"):
    if 'href' in link.attrs:
        print(link.attrs['href'])
