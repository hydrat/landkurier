require 'factory_girl'

FactoryGirl.define do

  sequence :name do |d|
    "Chischtli_#{d}"
  end
  
  factory :combo do
    name # Automatically takes value from sequence above, alternatively { Factory.next(:name) }
    price Random.rand
    description "Die faktorielle Beschreibung"
    periodicity 3
    # periodicity "biweekly"
  end

  factory :fix_combo, :parent => :combo do
    type "FixCombo"
  end
  
end