class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :restaurant
      t.date :date
      t.text :notes
      t.string :link

      t.timestamps
    end
  end
end
