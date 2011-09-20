FactoryGirl.define do
  factory :company do
    name "PlataformaTec"
    sequence(:username)
    password "123456"
  end
end
