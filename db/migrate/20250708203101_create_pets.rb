class CreatePets < ActiveRecord::Migration[8.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.references :animal, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true
      t.boolean :female
      t.date :date_of_birth
      t.boolean :active, default: true

      # t.timestamps
    end
  end
end
