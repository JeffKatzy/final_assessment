# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# books
id | title | author_id

# author
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table

#customers
  #has many reviews
  #has many restaurants through reviews
id  | name | birth_year | hometown


#restaurants
  #belongs to owner
  #has many customers
  #has many reviews
id  | name  | location | owner_id


#owners
  #has one restaurant
id  | name


#reviews
  #belongs to customer
  #belongs to restaurant
id  | customer_id | restaurant_id
