FactoryGirl.define do
  factory :task do
    user { generate :string}
    email { generate :string}
  end
end