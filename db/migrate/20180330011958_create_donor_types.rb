class CreateDonorTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :donor_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
