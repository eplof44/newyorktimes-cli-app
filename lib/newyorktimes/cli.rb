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
    case input
    when "1"
      @articles[1].each do |article |
         puts "#{article.author} - #{article.summary}"
       end
    when "2"
      puts "show article summary"
    when "3"
      puts "show article summary"
    when "4"
      puts "show article summary"
    when "5"
      puts "show article summary"
    when "6"
      puts "show article summary"
    when "7"
      puts "show article summary"
    when "8"
      puts "show article summary"
    when "9"
      puts "show article summary"
    when "10"
      puts "show article summary"
  end

def goodbye
  puts "Have a great day! Come back tomorrow for more delicious news."
end

end
end
