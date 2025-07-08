class CreateProcedureCosts < ActiveRecord::Migration[8.0]
  def change
    create_table :procedure_costs do |t|
      t.references :procedure, null: false, foreign_key: true
      t.integer :cost
      t.date :start_date
      t.date :end_date

      # t.timestamps
    end
  end
end
