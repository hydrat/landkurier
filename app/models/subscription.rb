class Subscription < ActiveRecord::Base
  belongs_to :cmobo
  belongs_to :user
end
