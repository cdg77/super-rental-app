class Rental < ActiveRecord::Base
  belongs_to :city

  validates :owner, :type, :image, :bedrooms, :presence => true
end
