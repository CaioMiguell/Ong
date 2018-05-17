class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :image
      t.string :species
      t.string :breed
      t.string :note

      t.timestamps
    end
  end
end
