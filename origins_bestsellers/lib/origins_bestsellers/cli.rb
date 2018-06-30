require_relative '../lib/origins_bestsellers/scraper'
require_relative '../lib/origins_bestsellers/product'

require 'pry'
require 'nokogiri'
require 'open-uri'

class CLI
  def run
    Scraper.list_menu()
  end
end
