require 'csv'
require 'faker'

# Clear existing data
Product.destroy_all
Satisfaction.destroy_all
Importance.destroy_all
Review.destroy_all

# Import Satisfaction levels from CSV
CSV.foreach(Rails.root.join('db', 'data', 'satisfaction.csv'), headers: true) do |row|
  Satisfaction.create!(level: row['Satisfaction'])
end

# Import Importance levels from CSV
CSV.foreach(Rails.root.join('db', 'data', 'importance.csv'), headers: true) do |row|
  Importance.create!(level: row['Importance'])
end

# Create 100 fake products
100.times do
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    price: Faker::Commerce.price(range: 1..1000.0),
    category: Faker::Commerce.department(max: 1)
  )
end

# Create 100 fake reviews
100.times do
  Review.create!(
    product: Product.all.sample,
    satisfaction: Satisfaction.all.sample,
    importance: Importance.all.sample,
    comments: Faker::Lorem.paragraph(sentence_count: 2)
  )
end

puts "Created #{Product.count} products"
puts "Created #{Satisfaction.count} satisfaction levels"
puts "Created #{Importance.count} importance levels"
puts "Created #{Review.count} reviews"
