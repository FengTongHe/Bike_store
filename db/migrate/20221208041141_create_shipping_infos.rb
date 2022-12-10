class CreateShippingInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_infos do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :province
      t.string :post_code
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
