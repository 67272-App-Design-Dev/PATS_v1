class CreateTreatments < ActiveRecord::Migration[8.0]
  def change
    create_table :treatments do |t|
      t.references :procedure, null: false, foreign_key: true
      t.references :visit, null: false, foreign_key: true
      t.boolean :successful
      t.float :discount, default: 0.0

      # t.timestamps
    end
  end
end
