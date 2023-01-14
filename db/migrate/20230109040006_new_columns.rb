class NewColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :body2, :string
    add_column :articles, :image_name2, :string
  end
end
