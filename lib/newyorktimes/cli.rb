require 'pry'

class CLI

  def call
    welcome
    Scraper.scrape_news
    list_articles
    menu
  end

  def welcome
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "WELCOME TO THE NEW YORK TIMES FOOD SECTION READER"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end

  def list_articles
    Article.all[0..19].each.with_index(1) do |article, i |
      puts " #{i} - #{article.headline.upcase}"
    end
  end

  def menu
    puts "Please enter the number of the article (1-20) you would like to learn more about. (or type exit to quit)"
    input = gets.strip
    if input.to_i > 0 && input.to_i < Article.all.count
      chosen_article = Article.all[input.to_i-1]
      puts "---------------------------------------------------"
      puts "#{chosen_article.headline.upcase}"
      puts "--------------------------------------------------"
      puts "#{chosen_article.author}"
      puts "#{chosen_article.summary}"
      puts "Read the full article here: #{chosen_article.url}"
      puts "--------------------------------------------------"
      puts "Would you like to see the list again? (y/n)"
      input = gets.strip
      if input == 'y'
        list_articles
        menu
      else
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "HAVE A GREAT DAY! COME BACK TOMORROW FOR MORE DELICIOUS NEWS!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      end
    else
      puts "Invalid input. Select 1-20."
      menu
    end
  end
end
