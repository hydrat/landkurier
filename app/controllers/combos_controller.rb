class CombosController < ApplicationController
  
  respond_to :html

  def show
    @combo = Combo.find(params[:id])
  end

  def new
    @combo = Combo.new
  end

  def create
    @combo = Combo.new(params[:combo])
    if @combo.save
      flash[:notice] = t('combos.create_success_flash')
    end
    respond_with @combo
  end
   
end
