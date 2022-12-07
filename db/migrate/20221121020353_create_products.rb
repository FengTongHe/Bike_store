class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacture
      t.string :style
      t.decimal :cost
      t.decimal :price
      t.text :comment

      t.timestamps
    end
  end
end
