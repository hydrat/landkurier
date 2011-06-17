class CombosController < ApplicationController

  def new
    @combo = Combo.new
  end

  def show
    @combo = Combo.find(params[:id])
  end

end
