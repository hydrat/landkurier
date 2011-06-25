class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

end
