require 'nokogiri'
require 'open-uri'
require 'pry'


class Article

attr_accessor :headline, :author, :timestamp, :summary, :url

def self.scrape_todays_articles
end

def self.scrape_news
  doc = Nokogiri::HTML(open("https://www.nytimes.com/"))
  article = self.new
  headline =
  author =
  timestamp =
  summary =
  url = 
end

end
