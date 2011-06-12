FactoryGirl.define do
  factory :user do
    email "factory_member@landkurier"
    password "factory_secret"
  end
  
  factory :confirmed_user, :parent => :user do |f|
    f.after_create { |user| user.confirm! }
  end
end