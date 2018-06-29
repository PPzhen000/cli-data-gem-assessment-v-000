require 'pry'
require 'nokogiri'
require 'open-uri'

# class OriginsBestsellers::Scraper
class Scraper
  def self.scrape_skincare_page

    skincare_page = Nokogiri::HTML(open("https://www.origins.com/skincare-bestsellers"))

    skincare_product = []

    product_name = skincare_page.css(".product-brief__subtitle").text
    product_price = skincare_page.css(".product-brief__price.down-price").text.strip
    #number_of_reviews = skincare_page.css("span.pr-snippet-review-count").text
    links_to_buy = skincare_page.css(".product-brief__subtitle__link").attribute("href")

     links_to_buy.each do |link|
       puts "product link = " + link.text
     end
     binding.pry
  end

  def self.scrape_bath_and_body_page
    bath_and_body_page = Nokogiri::HTML(open("https://www.origins.com/bathandbody-bestsellers"))
  end

  def self.scrape_makeup_page
    makeup_page = Nokogiri::HTML(open("https://www.origins.com/makeup-bestsellers"))
  end

end

Scraper.scrape_skincare_page
