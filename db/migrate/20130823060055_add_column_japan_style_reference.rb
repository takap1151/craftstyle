class AddColumnJapanStyleReference < ActiveRecord::Migration
  def change
    add_column :japan_styles, :reference_url, :text
    add_column :japan_styles, :reference_name, :text
  end

end
