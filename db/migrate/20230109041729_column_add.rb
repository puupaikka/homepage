class ColumnAdd < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :subtitle, :string
    add_column :articles, :subtitle2, :string
  end
end
