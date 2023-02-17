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

puts "Seeding categories..."
Category.create(name: "Appetizers")
Category.create(name: "Wings", description: "Tossed in sauce of your choice Mild, Hot or BBQ. Served with Celery & Bleu Cheese or Ranch")
Category.create(name: "Salads", description: "Dressings: Ranch, Italian, Bleu Cheese, Honey Mustard, Caesars, Balsamic Vinaigrette, Oil & Vinegar or Thousand Island")
Category.create(name: "Wraps $10.99", description: "Your Choice of White, Wheat, Spinach or Tomato Wrap", add_ons: "Add Long Hots $1.49. Turn any CheeseSteak into a wrap")
Category.create(name: "Triple Decker Clubs $10.99", add_ons: "Add Cheese $1")
Category.create(name: "CheeseSteaks $11.99", add_ons: "Extra Cheese $1. Extra Pepperoni $1")
Category.create(name: "Burgers $10.99", add_ons: "Make it a combo $3.99. Add Long Hots $1. Add Bacon $1.99")
Category.create(name: "Hoagies & Grinders $10.99", add_ons: "Add Long Hots $1.49")
Category.create(name: "Sandwiches $8.99")
Category.create(name: "Grilled Cheese $5.49", description: "Your choice of White, Wheat or Rye")
Category.create(name: "Catering", description: "You Create - Includes Chips, Drinks and Napkins. Pricing Per Person")

# appetizer seeds
puts "Seeding apps..."

Food.create(name: "House Made Chips", price: 2.25, category_id: 1, details: "Testing details attribute")
Food.create(name: "French Fries", price: 4.99, category_id: 1)
Food.create(name: "Old Bay Fries", price: 5.49, category_id: 1)
Food.create(name: "Sweet Potato Fries", price: 6.99, category_id: 1)
Food.create(name: "Cheese Fries", price: 6.49, category_id: 1)
Food.create(name: "Bacon Ranch Cheese Fries", price: 8.49, category_id: 1)
Food.create(name: "Beer Battered Onion Rings", price: 6.99, category_id: 1, add_ons: "(with a side of Southwest Sauce)")
Food.create(name: "Mozzarella Sticks", price: 6.99, category_id: 1, add_ons: "(with a side of Marinara Sauce)")
Food.create(name: "Mac & Cheese Wedges", price: 6.99, category_id: 1)
Food.create(name: "Broccoli Bites", price: 6.99, category_id: 1)
Food.create(name: "Chicken Tenders (3pc)", price: 6.49, category_id: 1, add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Chicken Tenders (5pc)", price: 9.49, category_id: 1, add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Buffalo Chicken Tenders (3pc)", price: 6.99, category_id: 1, add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Buffalo Chicken Tenders (5pc)", price: 9.99, category_id: 1, add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Chicken Tenders & Fries Combo (3pc)", price: 10.49, category_id: 1, add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Chicken Tenders & Fries Combo (5pc)", price: 13.49, category_id: 1, add_ons: "Choice of Sauce (Honey Mustard, Ranch, BBQ, Ketchup)")
Food.create(name: "Buffalo Chicken Tenders & Fries Combo (3pc)", price: 10.99, category_id: 1, add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")
Food.create(name: "Buffalo Chicken Tenders & Fries Combo (5pc)", price: 13.99, category_id: 1, add_ons: "Tossed in hot or mild sauce with choice of Ranch or Blue Cheese")

puts "Done seeding apps!"

puts "Seeding wings..."

Food.create(name: "5 Wings", price: 7.99, category_id: 2)
Food.create(name: "10 Wings", price: 14.49, category_id: 2)
Food.create(name: "20 Wings", price: 26.99, category_id: 2)

puts "Done seeding wings!"

puts "Seeding salads..."

Food.create(name: "Caesar", price: 8.99, category_id: 3, details: "Crispy romaine lettuce, house made croutons and Parmesan cheese")
Food.create(name: "Grilled Chicken Caesar", price: 10.99, category_id: 3, details: "Our Caesar salad topped with fresh marinated, grilled chicken")
Food.create(name: "Garden", price: 9.99, category_id: 3, details: "Mixed greens, tomato, onion, roasted peppers, croutons, cucumbers and a hard boiled egg")
Food.create(name: "Buffalo Chicken Garden", price: 11.99, category_id: 3, details: "Our garden salad with chicken tenders tossed with hot sauce")
Food.create(name: "Chef Garden", price: 11.99, category_id: 3, details: "Our garden salad with ham, turkey, provolone and american cheese")
Food.create(name: "Tuna Salad Garden", price: 11.99, category_id: 3, details: "Our garden salad with a scoop of our homemade tuna salad")
Food.create(name: "Chicken Salad Garden", price: 11.99, category_id: 3, details: "Our garden salad with a scoop of our homemade chicken salad")
Food.create(name: "Greek Garden", price: 11.99, category_id: 3, details: "Our garden salad with Kalamata olives and feta cheese")
Food.create(name: "Chicken Tender Garden", price: 11.99, category_id: 3, details: "Our garden salad with crispy chicken tenders & american cheese")

puts "Done seeding salads!"

puts "Seeding wraps..."

Food.create(name: "Cuban Wrap", price: 10.99, category_id: 4, details: "Pulled Pork, Black Forrest Ham, cheese, pickles, mustard, ham and swiss")
Food.create(name: "Southwestern Turkey Wrap", price: 10.99, category_id: 4, details: "Southwest Spread, turkey, lettuce, sweet peppers and crispy tortilla strips")
Food.create(name: "Buffalo Tender Wrap", price: 10.99, category_id: 4, details: "Chicken tenders tossed in hot sauce with lettuce, tomato, and blue cheese or ranch")
Food.create(name: "Mediterranean Grilled Veggie Wrap", price: 10.99, category_id: 4, details: "Spring mix, kalamata olives, roasted peppers, tomato, feta cheese, onion, lettuce, oregano, oil and vinegar")
Food.create(name: "Turkey BLT Wrap", price: 10.99, category_id: 4, details: "Sliced turkey, crispy bacon, lettuce, tomato, and mayo")
Food.create(name: "Chicken Caesar Wrap", price: 10.99, category_id: 4, details: "Crisp romaine lettuce, grilled chicken, caesar dressing and parmesan cheese")

puts "Done seeding wraps!"

puts "Seeding triple decker clubs..."

Food.create(name: "Cuban Club", price: 10.99, category_id: 5, details: "Pulled Pork, Black Forrest Ham, cheese, pickles, mustard, ham and swiss")
Food.create(name: "Chicken Tender Club", price: 10.99, category_id: 5, details: "Honey mustard, bacon and American cheese")

puts "Done seeding triple decker clubs!"

puts "Seeding cheesesteaks..."

Food.create(name: "Tiger Steak", price: 12.99, category_id: 6, details: "Beef steak, chicken steak, bacon, american cheese, all mixed together")
Food.create(name: "Buffalo Chicken Steak", price: 12.99, category_id: 6, details: "Hot sauce and american cheese with blue cheese or ranch")
Food.create(name: "Philly Steak", price: 11.99, category_id: 6, details: "Beef steak with fried onions & real cheese wiz")
Food.create(name: "Pizza Steak", price: 12.99, category_id: 6, details: "Beef steak mixed with marinara sauce & mozzarella cheese")

puts "Done seeding cheesesteaks!"

puts "Seeding burgers..."

Food.create(name: "Budz Burger", price: 11.99, category_id: 7, details: "Fried onions, lettuce, tomato, thousand island dressing, on a grilled cheese")
Food.create(name: "Bacon Mushroom Swiss Burger", price: 11.99, category_id: 7, details: "With lettuce, tomato, and fried onions")
Food.create(name: "Master Chicken Burger", price: 11.99, category_id: 7, details: "Fried chicken cutlet, cole slaw, southwest spread on a grilled brioche bun")
Food.create(name: "Southwest Turkey Burger", price: 11.99, category_id: 7, details: "Turkey Burger with southwest sauce, crispy torilla chips, sweet peppers on a grilled brioche bun")

puts "Done seeding burgers!"

# example seed
User.create(
    email: "elibrown@gmail.com",
    password: "elibrown"
)
