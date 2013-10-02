class CreateJapanStyles < ActiveRecord::Migration
  def change
    create_table :japan_styles do |t|
      t.string :article_image
      t.text :article_text
      t.text :article_title

      t.timestamps
    end
  end
end
