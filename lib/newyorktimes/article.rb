require 'nokogiri'
require 'open-uri'
require 'pry'


class Article

  attr_accessor :headline, :author, :timestamp, :summary, :url

  def self.todays_articles
    self.scrape_home
  end

  def self.scrape_home
    articles = []
    articles << scrape_news
  end

  def self.scrape_news
    doc = Nokogiri::HTML(open("https://www.nytimes.com/"))
    article = self.new
    article.headline = doc.search("h2.story-heading").text
    article.author = doc.search("p.byline").text
    article.timestamp = doc.search(".timestamp").text
    article.summary = doc.search("p.summary").text
    article.url = doc.search("h2.story-heading a").attr("href")
    article
  end

end
