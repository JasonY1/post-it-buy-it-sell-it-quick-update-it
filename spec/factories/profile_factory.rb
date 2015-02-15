FactoryGirl.define do
  factory :profile do
    association :user, factory: :user
    firstname "first"
    lastname "last"
    prescription_num "12342141234"
    phonenum "123-123-1234"
    address1 "123 Something dr"
    city  "Somewhere"
    zipcode "92322"
    prescription_card "card.jpg"
    idcard "id.jpg"
  end
end

