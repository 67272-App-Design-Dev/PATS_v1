class CreateAnimalMedicines < ActiveRecord::Migration[8.0]
  def change
    create_table :animal_medicines do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.integer :recommended_num_of_units

      # t.timestamps
    end
  end
end
