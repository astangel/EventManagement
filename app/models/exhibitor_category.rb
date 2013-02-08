class ExhibitorCategory < ActiveRecord::Base
  validates :name, :presence => true
  has_many :exhibitors
end
