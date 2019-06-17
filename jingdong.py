from selenium.webdriver.chrome.options import Options
import MySQLdb
import requests
from lxml import etree
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

def getPhone():
    chorme_options=Options()
    chorme_options.add_argument("--headless")
    chorme_options.add_argument("--disable-gpu")
    driver=webdriver.Chrome(chrome_options=chorme_options)
    driver.get("https://www.jd.com/")
    keyInput=driver.find_element_by_id("key")
    keyInput.send_keys("手机")
    keyInput.send_keys(Keys.ENTER)

    for i in range(10):
        conn=MySQLdb.connect(host='localhost',user='root',passwd='root',db='test',charset='utf8')
        cur=conn.cursor()
        time.sleep(1)
        lt=driver.find_elements_by_xpath("//div[@id='J_goodsList']//li[@class='gl-item']")
        for i in lt:
            try:
                price=i.find_element_by_xpath(".//div[@class='p-price']//i").text
                note=i.find_element_by_xpath(".//div[@class='p-name p-name-type-2']//em").text
                sql="insert into doubanapp_phonedb (name,price) values ('%s','%s')"%(note,price)
                cur.execute(sql)
            except:
                price=""
                note=""

        cur.close()
        conn.commit()
        conn.close()
        
        try:
            driver.find_element_by_xpath("//span[@class='p-num']//a[@class='pn-next disabled']")
        except:
            nextPage=driver.find_element_by_xpath("//span[@class='p-num']//a[@class='pn-next']")
            nextPage.click()
    
getPhone()
        

