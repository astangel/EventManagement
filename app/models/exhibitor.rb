class Exhibitor < ActiveRecord::Base
  attr_accessible :name, :description, :sponsor_id, :exhibitor_category_id, :sponsor, :contests
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
  
  belongs_to :sponsor
  belongs_to :exhibitor_category
  has_many :meetings, :through => :sponsor
  has_many :contests, :through => :sponsor
end
