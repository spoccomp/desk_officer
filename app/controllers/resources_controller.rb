class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    
    @resources_size = Resource.all.size 
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end
  def create
    @resource = Resource.new(resource_params)
    puts @resource.inspect
    if @resource.save
      redirect_to resources_path
    else
      render "new"
    end
  end
  def edit
    @resource = Resource.find(params[:id])
  end
  def update
    @resource = Resource.find(params[:id])
    if @resource.update(resource_params)
      redirect_to @resource
    else
      render 'new'
    end
  end
  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    respond_to do |format|
      format.html {render redirect_to resource_path}
      format.js { render '/resources/index.js.erb'}
    end
  end

  private
    def resource_params
      params.require(:resources).permit(
        :first_name,
        :last_name,
        :tax_id,
        :rank
      )
      end


end
