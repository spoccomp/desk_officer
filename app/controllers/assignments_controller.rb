class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    puts @assignment.inspect
    if @assignment.save
      redirect_to assignments_path
    else
      render "new"
    end
  end
  def edit
    @assignment = Assignment.find(params[:id])
  end
  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to @assignment
    else
      render 'new'
    end
  end
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    respond_to do |format|
      format.html {render redirect_to assignments_path}
      format.js { render '/assignments/index.js.erb'}
    end
  end

  private
    def assignment_params
      params.require(:assignments).permit(:foot_post, 
      :sector_A, :sector_B, :sector_C, 
      :sector_D, :station_house_clerk, 
      :station_hourse_security, 
      :telephone_switchboard_operator,
      :hospitalized_prisoner,
      :DOA, :prisoner_clerk,
      :EDP, :crime_scene,
      :special_post_A, :special_post_B,
      :special_post_C, :holiday_post_A,
      :holiday_post_B, :holiday_post_C,
      :desk_officer, :patrol_supervisor_1,
      :patrol_supervisor_2,
      :special_operations_supervisor,
      :commanding_officer,
      :executive_officer,
      :integrity_control_officer,
      :community_affairs_supervisor,
      :community_affairs_officer,
      :domestic_violence_officer,
      :street_crime_suppression_supervisor, 
      :street_crime_suppression_officer
      )
    end
  
end
