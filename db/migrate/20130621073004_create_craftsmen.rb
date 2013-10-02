class CreateCraftsmen < ActiveRecord::Migration
  def change
    create_table :craftsmen do |t|
      t.string :craftsman_name
      t.string :craftsman_name_en
      t.string :company
      t.string :company_en
      t.string :tel
      t.string :address
      t.string :address_en
      t.string :mail
      t.text :profile
      t.text :profile_en
      t.string :profile_image
      t.string :website

      t.timestamps
    end
  end
end
