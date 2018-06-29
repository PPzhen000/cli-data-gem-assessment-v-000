class OriginsBestsellers::Product

  attr_accessor :name, :price, :link, :number_of_reviews

  @@all = []

  def initialize(name = nil ,price = nil, link = nil, number_of_reviews = "No Reviews")
    @name = name
    @price = price
    @link = link
    @number_of_reviews = number_of_reviews
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_catagory_page()

  end

end
