# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# if Rails.env.development?
#   AdminUser.create!(email: "admin@example.com", password: "password",
#                     password_confirmation: "password")
# end

require "csv"

Product.delete_all
Category.delete_all

filename = Rails.root.join("db/bikeDB.csv")
puts "Loading Bikes from the csv file: #{filename}"

csv_data = File.read(filename)
bikes = CSV.parse(csv_data, headers: true, encoding: "utf-8")

bikes.each do |b|
  category = Category.find_or_create_by(name: b["category"])

  next unless category && category.valid?

  product = category.products.create(
    name:        b["model"],
    manufacture: b["brand"],
    style:       b["style"],
    cost:        b["cost"],
    price:       b["price"]
  )
  # download_image = URI.open(b["img-src"])
  # product.image.attach(io: download_image, filename: "m-#{[product.name].join('-')}.jpg")
  # sleep(0.5)
end
