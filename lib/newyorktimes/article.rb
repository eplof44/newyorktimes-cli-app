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
    doc = Nokogiri::HTML(open("https://www.nytimes.com/pages/dining/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Food&WT.nav=page"))
    article = self.new
    article.headline = doc.search("h3").text.strip
    article.author = doc.search("h6.byline").text.strip
    article.timestamp = doc.search(".timestamp").text.strip
    article.summary = doc.search("p.summary").text.strip
    #article.url = doc.search("h2.story a").attr("href")
    article
  end

end
