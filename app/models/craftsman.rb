class Craftsman < ActiveRecord::Base
  require 'csv'
  has_many :craftsmen_products
  has_many :traditional_crafts, :through => :craftsmen_products
  attr_accessible :address, :address_en, :company, :company_en, :craftsman_name, :craftsman_name_en, :mail, :profile, :profile_en, :profile_image, :tel, :website

  def self.import_from_csv(file_path)
    file_path = File.join(Rails.root, file_path)
    rows = CSV.read(file_path)
    rows.shift
    rows.each do |row|
      Craftsman.create(:craftsman_name => row[0], :craftsman_name_en => row[1], :company => row[2], :company_en => row[3], :tel => row[4], :address => row[5], :adress_en => row[6], :mail => row[7], :profile => row[8], :profile_en => row[9], :profile_image => row[10], :website => row[11])
    end
  end

  def self.export_from_csv
    Craftsman.
    rows = CSV.read(file_path)
  end

  validates :profile_image, :presence => true
  validates :craftsman_name, :presence => true
  validates :craftsman_name_en, :presence => true
end
