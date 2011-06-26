class SubscriptionsController < ApplicationController
  
  respond_to :html
  
  before_filter :get_combo_from_combo_id
  
  
  def show
    @subscription = Subscription.find(params[:id])
  end

  def new
    @subscription = Subscription.new
  end
  
  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save
      flash[:notice] = t('subscriptions.create_success_flash')
    end
    respond_with [@combo, @subscription]
  end
        
  
  private
  
  def get_combo_from_combo_id
    @combo = Combo.find(params[:combo_id])
  end
  

end
