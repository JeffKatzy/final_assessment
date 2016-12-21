class Restaurant
  attr_accessor :name, :review_list, :customer_list

  @@all = []

  def initialize(name)
    @name = name
    @review_list = []
    @customer_list = []
    @@all << self
  end

  def reviews
    @review_list
  end

  def customers
    @customer_list
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name == name }
  end

end
