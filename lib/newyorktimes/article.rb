require 'pry'

class Article

  attr_accessor :headline, :author, :summary, :url

  @@all = []


  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_author(name)

    @@all.select do |article|
      article.author.downcase == name.downcase
    end

  end

end
