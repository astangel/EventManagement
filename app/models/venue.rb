class Venue < ActiveRecord::Base
  validates :name, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true  
  
  attr_accessible :name, :address, :city, :state, :zip, :id
  has_many :meetings
end
