class OriginsBestsellers::Product

  attr_accessor :name, :price
  @@all = []

  def initialize(name = nil ,price = nil)
    @name = name
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_catagory_page()

  end

end
