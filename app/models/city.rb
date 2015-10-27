class City < ActiveRecord::Base
  validates :name, :state, :country, :presence => true
end
