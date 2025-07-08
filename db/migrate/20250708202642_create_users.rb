class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :role
      t.string :username
      t.string :password_digest
      t.boolean :active, default: true

      # t.timestamps
    end
  end
end
