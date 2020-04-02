require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    # scrape index page
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index"))
    # return array of hashes, each hash is one student
    # each student hash contains name, location, profile url
    # profile url will be used for 2nd scrape to get student details
  end

  def self.scrape_profile_page(profile_url)

  end

end
