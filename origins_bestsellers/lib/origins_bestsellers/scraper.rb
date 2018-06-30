require 'pry'
require 'nokogiri'
require 'open-uri'

# class OriginsBestsellers::Scraper
class Scraper

  def self.scrape_skincare_page

    skincare_page = Nokogiri::HTML(open("https://www.origins.com/skincare-bestsellers"))

    skincare_product = []
  #   skincare_page.css(".product-grid-wrapper").each do |product|
   #
  #     product_name = product.css(".product-brief__subtitle").text.strip
  #     product_price = product.css(".product-brief__price.down-price").text.strip
  #   # links_to_buy = product.css(".product-brief__subtitle__link").attr("href").text
   #
  #   #  links_to_buy.each do |link|
  #   #    puts "product link = " + link.text
  #   #  end
  #   # skincare_product << {name: product_name, price: product_price, product_link: links_to_buy}
  #     skincare_product = {name: product_name, price: product_price}
   #
  #  end

  count = 0
  while skincare_page.css(".product-brief__subtitle").size > count do
    product_name = skincare_page.css(".product-brief__subtitle")[count].text.strip
    product_price = skincare_page.css(".product-brief__price.down-price")[count].text.strip
    skincare_product[count] = {name: product_name, price: product_price}
    count +=1
  end

   skincare_product
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
