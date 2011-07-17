class Producer < User
  has_many :combos, :as => :provider

end