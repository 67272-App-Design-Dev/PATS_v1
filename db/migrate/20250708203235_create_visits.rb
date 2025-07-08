class CreateVisits < ActiveRecord::Migration[8.0]
  def change
    create_table :visits do |t|
      t.references :pet, null: false, foreign_key: true
      t.date :date
      t.float :weight
      t.boolean :overnight_stay
      t.integer :total_charge

      t.timestamps
    end
  end
end
