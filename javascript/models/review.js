var Review = function createReview() {
  var id = 0;

  return class Review {
    constructor(customer_id, restaurant_id) {
      this.id = ++id;
      this.customer_id = customer_id
      this.restaurant_id = restaurant_id

      store.reviews = [...store.reviews, this]
    }

    static all() { 
      return store.reviews
    }
  }
}()

Review.prototype.customer = () => {
  return store.customers[this.customer_id-1]
}

Review.prototype.restaurant = () => {
  return store.restaurants[this.restaurant_id-1]
}
