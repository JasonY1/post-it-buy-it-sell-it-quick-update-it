FactoryGirl.define do
  factory :user do
    email "some@email.com"
    password "password"
    password_confirmation "password"
  end
end