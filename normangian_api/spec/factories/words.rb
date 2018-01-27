# spec/factories/todos.rb
FactoryGirl.define do
    factory :word do
      english { Faker::Lorem.word }
      single { Faker::Lorem.word }
    end
  end