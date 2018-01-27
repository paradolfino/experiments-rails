require 'rails_helper'

RSpec.describe Word, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }
  # Validation tests
  #ensure columns exist
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
