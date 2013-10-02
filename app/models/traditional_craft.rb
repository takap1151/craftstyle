class TraditionalCraft < ActiveRecord::Base
  require 'csv'
  has_many :craftsmen_products
  has_many :craftsmen, :through => :craftsmen_products
  attr_accessible :area, :area_en, :categories, :categories_en, :crafts, :crafts_en, :prefecture, :prefecture_en

  def self.import_from_csv(file_path)
    file_path = File.join(Rails.root, file_path)#Rail.rootと引数のfile_pathを合体したpathを生成
    rows = CSV.read(file_path)
    rows.shift
    rows.each do |row|
      TraditionalCraft.create(:crafts => row[0], :crafts_en => row[1], :categories => row[2], :categories_en => row[3], :area => row[4], :area_en => row[5], :prefecture => row[6], :prefecture_en => row[7])
    end
  end

  validates :categories, :presence => true
  validates :categories_en, :presence => true
end
