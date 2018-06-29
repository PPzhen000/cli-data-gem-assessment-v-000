require 'pry'
require "nokogiri"
require "open-uri"
class Scraper

  def self.get_page

    skincare_page = Nokogiri::HTML(open("https://www.origins.com/skincare-bestsellers"))

    product_name = skincare_page.css(".product-brief__subtitle").text
    product_price = skincare_page.css(".product-brief__price.down-price").text.strip
    #number_of_reviews = skincare_page.css("span.pr-snippet-review-count").text
    links_to_buy = skincare_page.css(".product-brief__subtitle__link")[5].attribute("href")

     product_links.each do |link|
       puts "product link = " + link.text
     end
  end

end

Scraper.get_page


# product_name = skincare_page.css("h3 .product-brief_subtitlee_link js-spp-link").text
# product_price = SKINCARE.css(".product-brief_price down-price").text.strip
# number_of_reviews = SKINCARE.css(".pr-snippet-review-count").text
# links_to_buy = SKINCARE.css(".mobile-hidden a").attribute("href").text
