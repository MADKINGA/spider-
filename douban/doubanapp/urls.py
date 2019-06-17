from doubanapp import views
from django.conf.urls import url

app_name='[myapp]'
urlpatterns = [
    url(r'^douban/(\d*)$', views.douban,name='douban'),
    url(r'^jingdong/(\d*)$', views.jingdong,name='jingdong'),
    url(r'^weibo/(\d*)$', views.weibo,name='weibo'),
]