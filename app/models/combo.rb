class Combo < ActiveRecord::Base
  
  has_many :subscriptions

  # ToDo - validate price is not empty
  validates :name, :presence => true
  validates :price, :presence => true

  # STI, get the parent model name in forms etc
  # http://code.alexreisner.com/articles/single-table-inheritance-in-rails.html
  def self.inherited(child)
    child.instance_eval do
      def model_name
        Combo.model_name
      end
    end
    super
  end

  

  # Work around helper methods for not accessing type directly
  # http://stackoverflow.com/questions/1601739/rails-attr-accessible-does-not-work-for-type
  # def type_helper   
  #   self.type 
  # end 
  # def type_helper=(type)   
  #   self.type = type
  # end
  
end
