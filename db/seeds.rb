# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_data = File.read(Rails.root.join('lib', 'seeds', 'zillow_homes.csv'))
csv = CSV.parse(csv_data, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  home = Home.create!({
    sale_type: row['SALE TYPE'],
    sold: row['SOLD DATE'],
    property_type: row['PROPERTY TYPE'],
    address: row['ADDRESS'],
    city: row['CITY'],
    state: row['STATE OR PROVINCE'],
    zip: row['ZIP OR POSTAL CODE'],
    price: row['PRICE'],
    beds: row['BEDS'],
    baths: row['BATHS'],
    location: row['LOCATION'],
    square_feet: row['SQUARE FEET']
  })
end