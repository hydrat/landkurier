class CombosController < ApplicationController

  def show
    @combo = Combo.find(params[:id])
  end

end
