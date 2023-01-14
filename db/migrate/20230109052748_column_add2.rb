# coding: utf-8
class ColumnAdd2 < ActiveRecord::Migration[6.0]
  def change
  require "csv"

  CSV.foreach('db/migrate/additional_articles.csv', encoding: 'Shift_JIS:UTF-8') do |column|
    Article.create(:title => column[0], :body => column[1], :image_name => column[2], :body2 => column[3], :image_name2 => column[4], :subtitle => column[5], :subtitle2 => column[6])
  end
end
end
