class Quote
  include Mongoid::Document

  field :quote, type: String
  field :author, type: String
  field :author_link, type: String
  field :tags, type: Array

  validates :quote, :author, :author_link, :tags, presence: true

  def self.quote_crawler(tag_search, page)
    link = "http://quotes.toscrape.com/page/#{page}"
    agent = Mechanize.new
    page = agent.get(link)

    quotes = []
    page.search('div.col-md-8 div.quote').each do |p|
      tags = p.search('div.tags a')

      quote = {
        quote: p.search('small.author').text,
        author: p.search('span.text').text,
        author_link: "#{link}#{p.search('span a')[0]['href']}",
        tags: tags.map{ |tag| tag.text }
      }
      quotes << quote
    end

    quotes = quotes.select { |q| q[:tags].include?(tag_search) }
  end
end