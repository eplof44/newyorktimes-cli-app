require_relative "../newyorktimes/article.rb"


class CLI

  def call
    welcome
    menu
    goodbye
  end

  def welcome
    puts "~ ~ WELCOME TO THE NEW YORK TIMES FOOD SECTION TOP NEWS READER ~ ~"
    puts "Please enter the number of the article you would like to learn more about. (or type exit to quit)"
  end

  def list_articles
    @articles = Article.todays_articles
    @articles.each_with_index do |article, i|
       puts "#{i} - #{article.headline} - #{article.author} - #{article.timestamp}"

    end
  end

  def menu
    list_articles
    input = gets.strip
    case input
    when "1"
      puts "show article summary"
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
