require 'spec_helper'

describe "combos/index.html.erb" do
  
  before(:each) do
    @combos = []
    4.times do
      @combos << Factory.create(:fix_combo)
    end
  end
       
  
  context "as a producer" do
    it "should show create link to producer" do
      sign_in Factory.create(:producer)
      render
      rendered.should have_content("Neues Abo erstellen")
    end
  end

  context "as a consumer" do
    before(:each) do
      sign_in Factory.create(:user)
    end      
    
    it "should not show create link to consumer" do
      render
      rendered.should_not have_content("Neues Abo erstellen")
    end
    
  end

end
