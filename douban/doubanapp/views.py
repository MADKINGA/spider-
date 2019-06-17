from django.http import HttpResponse
from django.shortcuts import render
from doubanapp.models import db
from django.core.paginator import Paginator
from django.core.paginator import EmptyPage
from django.core.paginator import PageNotAnInteger
from doubanapp.models import Phonedb
from doubanapp.models import weibodb


# Create your views here.

def douban(request,current_page):
    if not current_page:
        current_page = 1
    douban_list = db.objects.all().order_by("id")    # 一定要排序
    paginator = Paginator(douban_list, 15) # 每页15条记录
    page = paginator.page(int(current_page)) # 获取第一页数据，从1开始
    context = {'page': page}
    return render(request, 'douban.html', context)

def jingdong(request,current_page):
    if not current_page:
        current_page = 1
    jingdong_list = Phonedb.objects.all().order_by("id")    # 一定要排序
    paginator = Paginator(jingdong_list, 15) # 每页5条记录
    page = paginator.page(int(current_page)) # 获取第一页数据，从1开始
    context = {'page': page}
    return render(request, 'jingdong.html', context)

    
def weibo(request,current_page):
    if not current_page:
        current_page = 1
    weibo_list = weibodb.objects.all().order_by("id")    # 一定要排序
    paginator = Paginator(weibo_list, 15) # 每页5条记录
    page = paginator.page(int(current_page)) # 获取第一页数据，从1开始
    context = {'page': page}
    return render(request, 'weibo.html', context)