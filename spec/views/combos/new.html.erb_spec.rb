require 'spec_helper'

describe "combos/new.html.erb" do

  before(:each) do
    @combo = Combo.new
    # @combo = mock_model(Combo,
    #   :type => "Fixabo",
    #   :name => "FixCombo"
    # ).as_null_object.as_new_record
    assigns[:combo] = @combo
  end
  it "should have a complete form for Combo" do

    render #:template => "combos/new.html.erb"

    view.should render_template(:new)

    rendered.should have_selector("form select[@id='combo_type']")
    rendered.should have_selector("form input[@id='combo_name']")
    rendered.should have_selector("form textarea[@id='combo_description']")
    rendered.should have_selector("form input[@id='combo_price']")
    rendered.should have_selector("form input[@id='combo_size']")
    rendered.should have_selector("form input[@type='submit']")
  end

end