require 'rails_helper'

describe Rental do
  it { should validate_presence_of :owner }
  it { should validate_presence_of :type }
  it { should validate_presence_of :image }
  it { should validate_presence_of :bedrooms }
end
