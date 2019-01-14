class UnitsController < ApplicationController

  def index
    @units = Unit.all
  end

  def show
    @unit = Unit.find(params[:id])
    @user = User.find(@unit.user_id)
  end
  
  def new
    @unit = Unit.new
  end

  def create
    @user = current_user
    @unit = @user.units.create(unit_params.merge(owner: @user.email))
    
    redirect_to units_path
  end
  
  def edit
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id])
    @unit.update(unit_params)

    redirect_to unit_path(@unit)
  end
  
  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
      
    redirect_to units_path
    
  end

  private

  def unit_params
    params.require(:unit).permit(:unit_name, :owner, :members)
  end
end
