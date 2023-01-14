# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

require "csv"

CSV.foreach('db/articles.csv', encoding: 'Shift_JIS:UTF-8') do |column|
  Article.create(:title => column[0], :body => column[1], :image_name => column[2], :body2 => column[3], :image_name2 => column[4], :subtitle => column[5], :subtitle2 => column[6])
end