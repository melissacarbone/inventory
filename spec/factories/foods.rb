FactoryGirl.define do
  factory :food do
  sequence :title do |n|
    "food#{n}"
  end
  description 'Yummy'
  quantity 3
  end
end
