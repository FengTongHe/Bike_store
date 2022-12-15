class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :subtotal
      t.integer :pst
      t.integer :gst
      t.string :status
      t.references :address, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
