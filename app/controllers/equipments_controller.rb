class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    puts @equipment.inspect
    if @equipment.save
      redirect_to equipments_path 
    else
      render "new"
    end
  end
  def edit
    @equipment = Equipment.find(params[:id])
  end
  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to @equipment
    else
      render 'new'
    end
  end
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    respond_to do |format|
      format.html {render redirect_to equipments_path}
      format.js { render '/equipments/index.js.erb'}
    end
  end
  private
    def equipment_params
      params.require(:equipments).permit(
        :radio, :rmp, :van, :wagon, :scooter,
        :taser, :shield_long, :mace,
        :memo_book, :flares, :traffic_cone,
        :traffic_vest, :crime_scene_tape,
        :property_jewelry_tag, :property_security_tag    
      )
    end
end
