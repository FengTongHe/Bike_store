class CreateTaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :taxes do |t|
      t.string :name
      t.decimal :pst
      t.decimal :gst

      t.timestamps
    end
  end
end
