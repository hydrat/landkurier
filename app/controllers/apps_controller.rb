class AppsController < ApplicationController
  
  respond_to :html

  def index
    @apps = App.all
  end
end
