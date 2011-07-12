require File.dirname(__FILE__) + '/../spec_helper'


describe CombosController, "GET show" do
  # login_producer

  
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


describe CombosController, "POST create" do
  before(:each) do
    @combo = mock_model(Combo, :save => nil)
    Combo.stub!(:new).and_return(@combo)
  end

  it "should built a new Combo" do
    Combo.should_receive(:new).with("name" => "RSpecControllerCombo").and_return(@combo)
    post :create, :combo => { "name" => "RSpecControllerCombo"}
  end
  
  it "should save a new Combo" do
    @combo.should_receive(:save)
    post :create
  end
  
  context "when the combo saves successfully" do
    before(:each) do
      @combo.stub!(:save).and_return true
    end  
    
    it "should set a flash[:notice] message" do
      post :create
      flash[:notice].should == "Sie haben erfolgreich ein neues Chischtli erstellt."
    end

    it "should render the show template" do
      post :create
      response.should redirect_to(combo_path(@combo.id))
    end
  end
  
  context "when the combo fails to save" do
    before(:each) do
      @combo.stub!(:save).and_return false
    end
    
    it "should assign @combo" do
      post :create
      assigns[:combo].should == @combo
    end
    
    # it "should render the new template" do
    #   post :create
    #   response.should render_template(:new)
    # end
  end
  
end


describe CombosController, "POST update" do

  before(:each) do
    @combo = mock_model(Combo)
    Combo.stub!(:edit).and_return(@combo)
  end

end
