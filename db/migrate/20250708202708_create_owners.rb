class CreateOwners < ActiveRecord::Migration[8.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.references :user, null: false, foreign_key: true
      t.boolean :active, default: true

      # t.timestamps
    end
  end
end
