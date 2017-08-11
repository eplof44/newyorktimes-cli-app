require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  attr_accessor :headline, :author, :timestamp, :summary, :url



  # def self.scrape_home
  #   articles = []
  #   articles << self.scrape_news
  #   articles
  # end

  def self.scrape_news
    doc = Nokogiri::HTML(open("https://www.nytimes.com/pages/dining/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Food&WT.nav=page"))

    articles = []


    doc.css('.story').each do |info|
      article = self.new
      article.headline = info.css("h3").text.strip
      article.author = info.css("h6.byline").text.strip
      article.timestamp = info.css(".timestamp").text.strip
      article.summary = info.css("p.summary").text.strip
      #article.url = doc.search("h2.story a").attr("href")
      articles << article
    end
    articles

    end



end
