class Sponsor < ActiveRecord::Base
  attr_accessible :url, :logo, :meetings, :meetings_ids
  
  validates :url, :presence => true
  validates :logo, :presence => true
  
  has_one :exhibitor
  has_and_belongs_to_many :meetings
  has_many :contests
  
end
