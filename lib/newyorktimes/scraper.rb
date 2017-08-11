require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper


def get_page
    Nokogiri::HTML(open("https://www.nytimes.com/pages/dining/index.html?action=click&pgtype=Homepage&region=TopBar&module=HPMiniNav&contentCollection=Food&WT.nav=page"))
  end

  def scrape_index
    self.get_page.css("div.story")
  end

  def make_articles
      scrape_index.each do |s|
        headline doc.search("h3").text
        author = doc.search("h6.byline").text.strip
        timestamp = doc.search(".timestamp").text.strip
        summary = doc.search("p.summary").text.strip
        Article.new(headline, author, timestamp, summary)

    end
  end
end
