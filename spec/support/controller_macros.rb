module ControllerMacros
  def login_producer
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in Factory.create(:producer)
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = Factory.create(:confirmed_user)
      sign_in @user
    end
  end
  
  def login_unconfirmed_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = Factory.create(:user)
      sign_in @user
    end
  end
  
end