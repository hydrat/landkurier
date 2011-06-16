require 'spec_helper'

describe "combos/show.html.erb" do
  before(:each) do
    @combo = stub("Combo")
    assigns[:combo] = @combo
  end
  
  it "should return a nicely formatted price" do
    @combo.stub!(:price).and_return 20
    render #"/combos/show.html.erb"
    rendered.should have_content("CHF 20.00")
  end

  it "should have all elements translated" do
    pending
  end

end