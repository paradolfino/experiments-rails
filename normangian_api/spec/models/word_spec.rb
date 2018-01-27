require 'rails_helper'

RSpec.describe Word, type: :model do
  # Association test
  # ensure Word model has a 1:m relationship with the Sentence model
  it { should have_many(:sentences).dependent(:destroy) }
  # Validation tests
  #ensure columns exist
  it { should validate_presence_of(:single) }
  it { should validate_presence_of(:plural) }
  it { should validate_presence_of(:definite) }
  it { should validate_presence_of(:definite_plural) }
end


t.string "english"
    t.string "single"
    t.string "plural"
    t.string "definite"
    t.string "definite_plural"