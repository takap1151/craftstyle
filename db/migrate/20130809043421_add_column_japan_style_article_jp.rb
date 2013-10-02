class AddColumnJapanStyleArticleJp < ActiveRecord::Migration
  def up
    add_column :japan_styles, :article_text_jp, :text
  end

  def down
    add_column :japan_styles, :article_text_jp
  end
end
