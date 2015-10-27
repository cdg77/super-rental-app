require 'rails_helper'

describe City do
  it { should validate_presence_of :name }
  it { should validate_presence_of :state }
  it { should validate_presence_of :country }
end
