class Inquiry < ActiveRecord::Base
  attr_accessible :description, :email, :name
  validates :name, :email, :description, :presence => true
  validates :email, :email => true
end
