class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :type
  
  # How to make the parent class in a STI aware of its children, eg. for select_options in form:
  # http://code.alexreisner.com/articles/single-table-inheritance-in-rails.html
  
  def consumer?
    self.type == "Consumer"
  end
  
  def producer?
    self.type == "Producer"
  end
  
end
