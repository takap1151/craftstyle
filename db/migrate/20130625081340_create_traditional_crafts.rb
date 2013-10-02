class CreateTraditionalCrafts < ActiveRecord::Migration
  def change
    create_table :traditional_crafts do |t|
      t.string :crafts
      t.string :crafts_en
      t.string :categories
      t.string :categories_en
      t.string :area
      t.string :area_en
      t.string :prefecture
      t.string :prefecture_en
      t.string :craftsmen_products_id
      t.references :craftsman

      t.timestamps
    end
    add_index :traditional_crafts, :craftsman_id
  end
end
