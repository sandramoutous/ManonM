class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :services do |t|
      t.string :title, null: true
      t.text :description
      t.string :image
      t.references :user, index: true, foreign_key: true
      t.references :category
      t.timestamps
    end
  end
end
