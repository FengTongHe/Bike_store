class CreateAboutPages < ActiveRecord::Migration[7.0]
  def change
    create_table :about_pages do |t|
      t.string :Title
      t.text :Content

      t.timestamps
    end
  end
end
