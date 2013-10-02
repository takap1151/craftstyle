class CreateCraftsmenProducts < ActiveRecord::Migration
  def change
    create_table :craftsmen_products do |t|
      t.string :product_image
      t.string :product_name
      t.string :product_name_en
      t.references :craftsman
      t.references :traditional_craft

      t.timestamps
    end
    add_index :craftsmen_products, :craftsman_id 
    add_index :craftsmen_products, :traditional_craft_id
  end
end
