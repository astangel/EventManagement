class Meeting < ActiveRecord::Base
  validates :name, :presence => true
  validates :start_date, :presence => true
  validates :end_time, :presence => true
  
  belongs_to :venue
  has_and_belongs_to_many :sponsors
  has_many :exhibitors, :through => :sponsors
end
