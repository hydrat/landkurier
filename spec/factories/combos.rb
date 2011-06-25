require 'factory_girl'

FactoryGirl.define do

  sequence :name do |d|
    "Chischtli_#{d}"
  end
  
  
  factory :combo do
    name {  Factory.create(:name) }
    price Random.rand
    description "Die faktorielle Beschreibung"
    size Random.rand(7)
  end

  factory :fix_combo, :parent => :combo do
    type "FixCombo"
  end
  
end