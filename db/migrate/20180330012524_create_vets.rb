class CreateVets < ActiveRecord::Migration[5.1]
  def change
    create_table :vets do |t|
      t.string :name
      t.string :fone
      t.string :crv
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
