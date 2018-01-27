
FactoryGirl.define do
    factory :sentence do
      entry { Faker::Lorem.word }
    end
end