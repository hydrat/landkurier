class Subscription < ActiveRecord::Base
  
  belongs_to :combo
  belongs_to :user
  
end
