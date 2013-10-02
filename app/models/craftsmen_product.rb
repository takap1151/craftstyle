class CraftsmenProduct < ActiveRecord::Base
  belongs_to :craftsman
  belongs_to :traditional_craft
  attr_accessible :product_image, :product_name, :product_name_en, :craftsman_id, :traditional_craft_id

  def self.import_from_csv(file_path)
    file_path = File.join(Rails.root, file_path)
    rows = CSV.read(file_path)
    rows.shift
    rows.each do |row|
      CraftsmenProduct.create(:product_image => row[0], :product_name => row[1], :product_name_en => row[2], :craftsman_id => row[3], :traditional_craft_id => row[4]) 
    end
  end

  validates :product_image, :presence => true
  validates :product_name, :presence => true
  validates :product_name_en, :presence => true
  validates :craftsman_id, :presence => true
  validates :traditional_craft_id, :presence => true
end
