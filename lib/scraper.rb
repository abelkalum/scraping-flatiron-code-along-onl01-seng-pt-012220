require 'nokogiri'
require 'open-uri'
require 'pry'
 
require_relative './course.rb'
 
class Scraper
 
  def get_page
      doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
      doc.css(".post")
      doc.css(".post").first
      
      binding.pry
  end
 
end
 
Scraper.new.get_page