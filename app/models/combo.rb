class Combo < ActiveRecord::Base

  # ToDo - validate price is not empty
  validates :name, :presence => true
  validates :price, :presence => true

  # Work around helper methods for not accessing type directly
  # http://stackoverflow.com/questions/1601739/rails-attr-accessible-does-not-work-for-type
  # def type_helper   
  #   self.type 
  # end 
  # def type_helper=(type)   
  #   self.type = type
  # end
  
end
