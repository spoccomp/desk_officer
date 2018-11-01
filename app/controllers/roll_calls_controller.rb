class RollCallsController < ApplicationController
  def index
    @roll_calls = RollCall.all
  end

  def show
    @roll_call = RollCall.find(params[:id])
  end

  def new
    @roll_call = RollCall.new
    @resources = Resource.all
    @assignments = Assignment.all
    @equipments = Equipment.all
  end

   def create
    @roll_call = RollCall.new(roll_call_params)
    puts  @roll_call.inspect
    if  @roll_call.save
      redirect_to roll_calls_path
    else
      render "new"
    end
  end
  def edit
    @roll_call = RollCall.find(params[:id])
    @resources = Resource.all
    @assignments = Assignment.all
    @equipments = Equipment.all
  end
  def update
    @roll_call = RollCall.find(params[:id])
    if @roll_call.update(roll_call_params)
      redirect_to @roll_call
    else
      render 'new'
    end
  end
  def destroy
    @roll_call = RollCall.find(params[:id])
    @roll_call.destroy
    respond_to do |format|
      format.html {render redirect_to roll_calls_path}
      format.js { render '/roll_calls/index.js.erb'}
    end
  end

  private
    def roll_call_params
      params.require(:roll_calls).permit(
        :tour,
        :resource,
        :assignment,
        :rmp,
        :radio,
        :taser,
        :other_equip_1,
        :other_equip_2,
        :meal_period,
        :rings,
        :eot_sign_out,
        :roll_call_final,
        :color_of_the_day,
        :c_summons_return_date
      )
      end


end
