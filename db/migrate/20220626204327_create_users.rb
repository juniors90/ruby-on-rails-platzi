class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :addres
      t.text :about_me
      t.integer :age

      t.timestamps
    end
  end
end
