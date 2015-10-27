class City < ActiveRecord::Base
  validates :name, :country, :presence => true
end
