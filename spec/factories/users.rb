require 'factory_girl'

FactoryGirl.define do
  factory :unconfirmed_user, :class => User do
    email "factory_member@landkurier.ch"
    password "factory_secret"
    producer false
  end
  
  factory :user, :parent => :unconfirmed_user do |f|
    email "factory_confirmed_member@landkurier.ch"
    f.after_create { |user| user.confirm! }
  end
  
  factory :producer, :parent => :unconfirmed_user do |f|
    email "factory_producer@landkurier.ch"
    producer true
    f.after_create { |user| user.confirm! }
  end
  
  
  factory :combo do
    name "Factory Abo"
    price 39.95
  end
  
end