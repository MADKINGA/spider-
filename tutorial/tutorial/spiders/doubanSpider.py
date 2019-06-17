import scrapy
from scrapy.http import Request
from tutorial.items import doubanItem

class doubanSpider(scrapy.Spider):
    name = "douban"
    allowed_domains = ["douban.com"]
    start_urls = [
        "https://movie.douban.com/top250"
    ]

    def parse(self, response):
        for sel in response.xpath('//div[@class="item"]'):
            item = doubanItem()
            item['title']=sel.xpath('.//span[@class="title"][1]/text()').extract()
            item['score']=sel.xpath('.//span[@class="rating_num"]/text()').extract()
            yield item

        next = response.xpath('//span[@class="next"]/a/@href').extract()[0]
        next_url = 'https://movie.douban.com/top250'+next
        yield Request(next_url,callback=self.parse)
