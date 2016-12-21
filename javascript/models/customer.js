var Customer = (function createCustomer() {
  var id = 0;

  return class Customer {
    constructor(name) {
      this.name = name;
      this.id = ++id;
      store.customers = [...store.customers, this]
    }

    static all() {
      return store.customers;
    }

    static find_by_name(name) {
      return store.customers.find((customer) => { return customer.name === name })
    }

  }
})()

Customer.prototype.add_restaurant = (name) => {
  return new Restaurant(name);
}

Customer.prototype.add_review = (restaurant) => {
  let rest = Restaurant.find_by_name(restaurant)
  rest.customers.push(this)
  rest.reviews.push(new Review(this.id, rest.id))
}
