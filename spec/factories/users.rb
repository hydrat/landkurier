require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email "factory_user@landkurier.ch"
    password "user_secret"
  end
  
  factory :producer do |f|
    email "factory_producer@landkurier.ch"
    password "producer_secret"
  end
  
end