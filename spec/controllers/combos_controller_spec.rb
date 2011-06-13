require File.dirname(__FILE__) + '/../spec_helper'

describe CombosController, "GET show" do
  
  def mock_combo(stubs={})
    @mock_combo ||= mock_model(Combo, stubs)
  end
  
  
  it "should render the show template" do
    Combo.stub(:find) { [mock_combo] }
    get :show, :id => mock_combo
    response.should render_template(:show)
    response.should be_success
  end
  
end
