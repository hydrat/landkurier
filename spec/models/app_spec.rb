require File.dirname(__FILE__) + '/../spec_helper'

describe App do
  it "should be valid" do
    App.new.should be_valid
  end
end
