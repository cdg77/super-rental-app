class Rental < ActiveRecord::Base
  validates :owner, :type, :image, :bedrooms, :presence => true
end
