require_relative '../lib/origins_bestsellers/scraper'
require_relative '../lib/origins_bestsellers/product'

require 'pry'
require 'nokogiri'
require 'open-uri'

class CLI

  def run
    puts "You are viewing the best sellers of Origins"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory or type exit:"
    input = gets.strip

    case input
    when "1"
      # Scraper.scrape_skincare_page
    when "2"
      # Scraper.scrape_bath_and_body_page
    when "3"
      # Scraper.scrape_makeup_page
    when "exit"
      goodbye
    end
  end

  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end


  def display_products
    Pruduct.all.each.with_index(1) do |product, index|
      puts "#{index} - #{product.name} - #{product.price}"
    end
  end


end
