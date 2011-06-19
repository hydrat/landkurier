require 'spec_helper'

describe "combos/index.html.erb" do
  
  it "should show create link to producer" do
    sign_in Factory.create(:producer)
    render
    rendered.should have_content("Neues Abo erstellen")
  end

  it "should not show create link to consumer" do
    sign_in Factory.create(:user)
    render
    rendered.should_not have_content("Neues Abo erstellen")
  end

end
