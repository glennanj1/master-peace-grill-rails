# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# removes pre-existing data when seeding database
Food.destroy_all

# example seed
Food.create(
    name: "Small Caesar Salad",
    price: 50.00,
    details: "crisp romain with croutons parmesan cheese and dressing on the side",
    add_ons: "(add chicken for $20.00)",
    category: "A La Carte"
)

