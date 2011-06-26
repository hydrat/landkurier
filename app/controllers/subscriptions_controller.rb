class SubscriptionsController < ApplicationController

  def new
    @combo = Combo.find(session[:combo_id])
    @subscription = Subscription.new
  end

end
