class CreateMedicineCosts < ActiveRecord::Migration[8.0]
  def change
    create_table :medicine_costs do |t|
      t.references :medicine, null: false, foreign_key: true
      t.integer :cost_per_unit
      t.date :start_date
      t.date :end_date

      # t.timestamps
    end
  end
end
