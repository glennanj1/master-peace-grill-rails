# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# removes pre-existing data when seeding database
Food.destroy_all
User.destroy_all

# example seed
# Food.create(
#     name: "Small Caesar Salad",
#     price: 50.00,
#     details: "crisp romain with croutons parmesan cheese and dressing on the side",
#     add_ons: "(add chicken for $20.00)",
#     category: "A La Carte"
# )

# appetizer seeds
puts "Seeding apps..."

Food.create(name: "House Made Chips", price: 2.25, category: "Appetizers", details: "Testing details attribute")
Food.create(name: "French Fries", price: 4.99, category: "Appetizers")
Food.create(name: "Old Bay Fries", price: 5.49, category: "Appetizers")
Food.create(name: "Sweet Potato Fries", price: 6.99, category: "Appetizers")
Food.create(name: "Cheese Fries", price: 6.49, category: "Appetizers")
Food.create(name: "Bacon Ranch Cheese Fries", price: 8.49, category: "Appetizers")
Food.create(name: "Beer Battered Onion Rings", price: 6.99, category: "Appetizers", add_ons: "(with a side of Southwest Sauce)")
Food.create(name: "Mozzarella Sticks", price: 6.99, category: "Appetizers", add_ons: "(with a side of Marinara Sauce)")
Food.create(name: "Mac & Cheese Wedges", price: 6.99, category: "Appetizers")
Food.create(name: "Broccoli Bites", price: 6.99, category: "Appetizers")
Food.create(name: "Chicken Tenders (3pc)", price: 6.49, category: "Appetizers", add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Chicken Tenders (5pc)", price: 9.49, category: "Appetizers", add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Buffalo Chicken Tenders (3pc)", price: 6.99, category: "Appetizers", add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Buffalo Chicken Tenders (5pc)", price: 9.99, category: "Appetizers", add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Chicken Tenders & Fries Combo (3pc)", price: 10.49, category: "Appetizers", add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Chicken Tenders & Fries Combo (5pc)", price: 13.49, category: "Appetizers", add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Buffalo Chicken Tenders & Fries Combo (3pc)", price: 10.99, category: "Appetizers", add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Buffalo Chicken Tenders & Fries Combo (5pc)", price: 13.99, category: "Appetizers", add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")

puts "Done seeding apps!"

# example seed
User.create(
    email: "elibrown@gmail.com",
    password: "elibrown"
)
