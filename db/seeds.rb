require 'factory_girl'

4.times do
  Factory.create(:fix_combo)
end


App.create(:name => Combo.model_name.human)
