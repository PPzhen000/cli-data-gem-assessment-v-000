class OriginsBestsellers::Product

  attr_accessor :name, :price
  @@all = []

  def initialize(pruduct_hash)
    product_hash.each do |attribute, value|
      self.send("#{attribute}=" ,value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_catagory_page()

  end

end
