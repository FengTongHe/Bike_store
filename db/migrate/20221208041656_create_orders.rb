class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.integer :product_id
      t.integer :price_cents
      t.integer :pst_cents
      t.integer :gst_cents
      t.integer :quantity
      t.references :customer, null: false, foreign_key: true
      t.references :shipping_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
