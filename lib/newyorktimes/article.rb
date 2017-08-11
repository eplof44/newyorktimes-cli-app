require 'nokogiri'
require 'open-uri'
require 'pry'


class Article

  attr_accessor :headline, :author, :timestamp, :summary, :url

  def self.todays_articles
    binding.pry
    self.scrape_home
  end

  def self.scrape_home
    articles = []
    articles << scrape_news
  end

  def self.scrape_news(url)
    doc = Nokogiri::HTML(open("https://www.nytimes.com/"))
    article = self.new
    headline = doc.search("h2.story-heading").text.strip
    author = doc.search("p.byline").text.strip
    timestamp = doc.search(".timestamp").text.strip
    summary = doc.search("p.summary").text.strip
    url = doc.search("h2.story-heading a").attr("href").strip
    article
  end

end
