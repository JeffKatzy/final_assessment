class Review
  attr_accessor :review_text
  @@all = []

  def initialize(review_text, customer, restaurant)
    @review_text = review_text
    @customer = customer
    @restaurant = restaurant
    @restaurant.customer_list << @customer
    @restaurant.review_list << self
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def self.all
    @@all
  end

end
