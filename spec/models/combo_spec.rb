require 'spec_helper'

describe Combo do
  
  it "should be valid" do
    Combo.new(:name => "MyCombo", :price => 19.95).should be_valid
  end
  
  it "should have a periodicity" do
    Combo.new(:name => "MyCombo", :price => 19.95).should be_valid    
  end
  
end
