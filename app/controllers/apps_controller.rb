class AppsController < ApplicationController
  def index
    @apps = App.all
  end
end
