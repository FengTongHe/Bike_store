class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :email

      t.timestamps
    end
  end
end
