FactoryGirl.define do
  factory :user do
    name                    "Pulkit Yadav"
    email                   "pulkityadav1@gmail.com"
    password                "foobar"
    password_confirmation   "foobar"
  end
end