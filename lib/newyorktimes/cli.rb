require_relative "../newyorktimes/article.rb"


class CLI

  def call
    welcome
    menu
    # goodbye
  end

  def welcome
    puts "Welcome to the New York Times Top News Reader!"
    puts "Please enter the number of the article you would like to learn more about. (or type exit to quit)"
  end

  def list_articles
    puts "here is where the articles will be listed"
  end

  def menu
    list_articles
    input = gets.strip
    case input
    when "(1..10)"
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
  puts "Have a great day!"
end

end
end
