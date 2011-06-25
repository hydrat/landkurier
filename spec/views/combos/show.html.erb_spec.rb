require 'spec_helper'

describe "combos/show.html.erb" do
  before(:each) do
    @combo = Factory.create(:fix_combo)
    
    assigns[:combo] = @combo
  end
  
  it "should return a nicely formatted price" do
    @combo.stub!(:price).and_return 20
    render
    rendered.should have_content("Preis")
    rendered.should have_content("CHF 20.00")
  end
  
  it "should return the size" do
    @combo.stub!(:size).and_return 7
    render
    rendered.should have_content("7")    
  end
  
  it "should show a subscribe button" do
    render
    rendered.should have_css('a', :id => 'subscribe_combo')
  end

end