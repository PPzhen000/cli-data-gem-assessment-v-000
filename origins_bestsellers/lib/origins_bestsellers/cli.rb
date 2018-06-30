require_relative '../lib/origins_bestsellers/scraper'
require_relative '../lib/origins_bestsellers/product'

require 'pry'
require 'nokogiri'
require 'open-uri'

class CLI

  def call
    run
    display_products
    goodbye
  end

  def run
    puts "You are viewing the best sellers of Origins"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory or type exit:"
    input = gets.strip
    @product_array = []
    case input
    when "1"
      # Scraper.scrape_skincare_page
      product_hash = Product.create_from_product_array(Scraper.scrape_skincare_page)
      @product_array = Product.new(product_hash)
      display_products(@product_array)

    when "2"
      # Scraper.scrape_bath_and_body_page
      product_hash = Product.create_from_product_array(Scraper.scrape_bath_and_body_page)
      @product_array = Product.new(product_hash)
      display_products(@product_array)
    when "3"
      # Scraper.scrape_makeup_page
      product_hash = Product.create_from_product_array(Scraper.scrape_makeup_page)
      @product_array = Product.new(product_hash)
      display_products(@product_array)
    when "exit"
      goodbye
    end
  end

  def goodbye
    puts "Please come back to see our updates on bestsellers!"
  end


  def display_products(@product_array)
    @product_array.each.with_index(1) do |product, index|
      puts "#{index} - #{product.name} - #{product.price}"
      puts "-----------"
    end
  end


end
