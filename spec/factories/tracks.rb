FactoryGirl.define do
  factory :track do
    url Faker::Internet.url
    date Faker::Date.between(20.days.ago, Date.today)
    user 1
  end
end
