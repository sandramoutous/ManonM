class AddDescriptionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :description, :text
    add_column :users, :image, :string
  end
end
