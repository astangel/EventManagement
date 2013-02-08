class Exhibitor < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :exhibitor_category_id, :presence => true
  
  belongs_to :sponsor
  belongs_to :exhibitor_category
  has_many :meetings, :through => :sponsor
end
