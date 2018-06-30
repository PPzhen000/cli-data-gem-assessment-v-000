require_relative '../lib/origins_bestsellers/scraper'
require_relative '../lib/origins_bestsellers/product'

require 'pry'
require 'nokogiri'
require 'open-uri'

class CLI

  def run

  end

  def display_products
    puts "You are viewing the best sellers of Origins"
    puts "Please view the bestsellers of Origins from 3 catagories: 1.SKINCARE, 2.BATH & BODY, 3.MAKEUP"
    puts "Which catagory would you like to see the list of best sellers? Please type in the corresponding number for each catagory or type exit:"


  end


end
