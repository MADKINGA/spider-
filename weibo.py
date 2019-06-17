from selenium.webdriver.chrome.options import Options
import MySQLdb
import requests
from lxml import etree
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

def getTopHot():
    chorme_options=Options()
    chorme_options.add_argument("--headless")
    chorme_options.add_argument("--disable-gpu")
    driver=webdriver.Chrome(chrome_options=chorme_options)
    driver.get("https://s.weibo.com/top/summary?Refer=top_hot&topnav=1&wvr=6")

    conn=MySQLdb.connect(host='localhost',user='root',passwd='root',db='test',charset='utf8')
    cur=conn.cursor()
    time.sleep(1)
    lt=driver.find_elements_by_xpath('//div[@class="data"]//table//tr[@class]')
    for i in lt:
        try:
            ranktop=i.find_element_by_xpath('.//td[@class="td-01 ranktop"]').text
            title=i.find_element_by_xpath('.//td[@class="td-02"]//a').text
            hot=i.find_element_by_xpath('.//td[@class="td-02"]//span').text
            sql="insert into weibo (ranktop,title,hot) values ('%s','%s','%s')"%(ranktop,title,hot)
            cur.execute(sql)
        except:
            None

    cur.close()
    conn.commit()
    conn.close()
    
getTopHot()
        

