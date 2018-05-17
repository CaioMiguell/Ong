class CreateAnimalHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_histories do |t|
      t.date :date_ini
      t.references :animal, foreign_key: true
      t.references :vet, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
