import requests
import re
import time

time1=time.time()
exist_url=[]
g_writecount=0

def scrappy(url,depth=1):
    global g_writecount
    try:
        header={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'}
        r=requests.get("https://en.wiktionary.org/wiki/"+url,headers=header)
        html=r.text
    except Exception as e:
        print('Failed downloading and saving',url)
        print(e)
        exist_url.append(url)
        return None

    exist_url.append(url)
    link_list=re.findall('<a href="/wiki/([^:#=<>]*?)".*?</a>',html)
    unique_list=list(set(link_list)-set(exist_url))

    for eachone in unique_list:
        g_writecount+=1
        output="No."+str(g_writecount)+"\t Depth:"+str(depth)+"\t"+url+'->'+eachone+'\n'
        print(output)
        with open('title.txt',"a+") as f:
            f.write(output)
            f.close()
        if depth<2:
            scrappy(eachone,depth+1)

scrappy("Wikipedia")
time2=time.time()
print("Total time",time2-time1)
