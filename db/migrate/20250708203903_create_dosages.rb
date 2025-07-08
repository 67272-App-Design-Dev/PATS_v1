class CreateDosages < ActiveRecord::Migration[8.0]
  def change
    create_table :dosages do |t|
      t.references :visit, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true
      t.integer :units_given
      t.float :discount, default: 0.0

      # t.timestamps
    end
  end
end
