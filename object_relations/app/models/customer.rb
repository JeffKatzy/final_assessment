class Customer
  attr_accessor :name, :review_list

  @@all = []

  def initialize(name)
    @name = name
    @review_list = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(review_text, restaurant)
    @restaurant = Restaurant.find_by_name(restaurant)
    if !@restaurant
      @restaurant = Restaurant.new(restaurant)
    end
    @review_list << Review.new(review_text, self, @restaurant)
  end

  def add_restaurant(name)
    Restaurant.new(name)
  end

  def reviews
    @review_list
  end

  def self.find_by_name(search_name)
    Customer.all.find { |customer| customer.name == search_name }
  end

end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
