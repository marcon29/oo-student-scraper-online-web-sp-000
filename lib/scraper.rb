require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index"))
    cards = doc.css(".student-card")
    index_array = []
    cards.each do |c|
      index_array <<
      {name: c.children[1].children[3].children[1].text,
      location: c.children[1].children[3].children[3].text,
      profile_url: c.children[1].attributes["href"].value}
    end
  end

    # scrape index page
    # return array of hashes, each hash is one student
    # each student hash contains name, location, profile url
    # profile url will be used for 2nd scrape to get student details

  def self.scrape_profile_page(profile_url)

  end

end
