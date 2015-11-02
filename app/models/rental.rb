class Rental < ActiveRecord::Base
  belongs_to :city

  validates :owner, :kind, :image, :bedrooms, :presence => true
end
