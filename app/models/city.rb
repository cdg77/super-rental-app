class City < ActiveRecord::Base
  has_many :rentals

  validates :name, :state, :country, :presence => true
end
