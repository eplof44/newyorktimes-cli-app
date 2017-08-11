class Article

  attr_accessor :headline, :author, :timestamp, :summary

  @@all = []

def initialize(headline = nil, author = nil, timestamp = nil, summary = nil)
  @headline = headline
  @author = author
  @timestampe = timestamp
  @summary = summary

end

def self.all
    @@all
end

end
