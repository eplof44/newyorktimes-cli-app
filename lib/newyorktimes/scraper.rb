require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper



  def self.scrape_news
    doc = Nokogiri::HTML(open("https://www.nytimes.com/pages/dining/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Food&WT.nav=page"))




    doc.css('.story').each do |info|
      article = Article.new
      article.headline = info.css("h3").text.strip
      article.author = info.css("h6.byline").text.strip.split("By ")[1] || ""
      article.summary = info.css("p.summary").text.strip
      article.url = info.css("a").attr("href").value

    end


    end


end
