require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper



# def self.todays_articles
#   self.scrape_home
# end
#
# def self.scrape_home
#   articles = []
#   articles << self.scrape_news
#   articles
# end

  def self.scrape_news
    doc = Nokogiri::HTML(open("https://www.nytimes.com/pages/dining/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Food&WT.nav=page"))
    article = doc.search(".story")
    article.each do |info|

    story.headline info.search("h3").text.strip
    story.author = info.search("h6.byline").text.strip
    story.timestamp = info.search("h6.byline span.timestamp").text.strip
    story.summary = info.search("p.summary").text.strip
  end

end
end
