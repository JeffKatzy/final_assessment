var Restaurant = (function createRestaurant() {
  var id = 0;
  return class Restaurant {
    constructor(name) {
      this.name = name;
      this.id = ++id;
      this.customers = [];
      this.reviews = [];
      store.restaurants = [...store.restaurants, this]
    }

    static all() {
      return store.restaurants
    }

    static find_by_name(name) {
      return store.restaurants.find((restaurant) => { return restaurant.name === name })
    }
  }
})()


Restaurant.prototype.customers = () => {
  return this.customers;
}

Restaurant.prototype.reviews = () => {
  return this.reviews;
}
