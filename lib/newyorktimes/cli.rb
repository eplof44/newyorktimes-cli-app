require_relative "../newyorktimes/scraper.rb"


class CLI

  def call
    welcome
    list_articles
    menu
    goodbye
  end

  def welcome
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "WELCOME TO THE NEW YORK TIMES FOOD SECTION READER"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Please enter the number of the article you would like to learn more about. (or type exit to quit)"
  end

  def list_articles
    @articles = Scraper.scrape_news
    @articles[0..9].each_with_index do |article, i |
      puts " #{i+1} - #{article.headline}"
    end
  end

  def menu
    input = gets.strip
      if input.to_i > 0
      chosen_article = @articles[input.to_i-1]
        puts "-----------------------------------------"
         puts "#{chosen_article.headline}"
         puts "-----------------------------------------"
         puts "#{chosen_article.author}"
         puts "#{chosen_article.timestamp}"
         puts "#{chosen_article.summary}"
         puts "Read the full article here: #{chosen_article.url}"
  end

def goodbye
  puts "Have a great day! Come back tomorrow for more delicious news."
end

end
end
