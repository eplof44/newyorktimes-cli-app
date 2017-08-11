require 'nokogiri'
require 'open-uri'
require 'pry'


class Article

  attr_accessor :headline, :author, :timestamp, :summary, :url



  def self.scrape_news(url)
    doc = Nokogiri::HTML(open("https://www.nytimes.com/"))
    article = self.new
    binding.pry
    headline = doc.search("h2.story-heading").text.strip
    author = doc.search("p.byline").text.strip
    timestamp = doc.search("timestamp")text.strip
    summary = doc.search("p.summary")text.strip
    # url =
  end

end

Article.scrape_news("https://www.nytimes.com/")
