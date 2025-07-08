class CreateMedicines < ActiveRecord::Migration[8.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.text :description
      t.integer :stock_amount
      t.integer :admin_method
      t.string :unit
      t.boolean :vaccine
      t.boolean :active, default: true

      # t.timestamps
    end
  end
end
