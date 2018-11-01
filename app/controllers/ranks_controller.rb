class RanksController < ApplicationController
  def index
    @ranks = Rank.all
  end
  def show
    @rank = Rank.find(params[:id])
  end

  def new
    @rank = Rank.new
  end
  def create
    @rank = Rank.new(resource_params)
    puts @rank.inspect
    if @rank.save
      redirect_to ranks_path
    else
      render "new"
    end
  end
  def edit
    @rank = Rank.find(params[:id])
  end
  def update
    @rank = Rank.find(params[:id])
    if @rank.update(rank_params)
      redirect_to @rank
    else
      render 'new'
    end
  end
  def destroy
    @rank = Rank.find(params[:id])
    @rank.destroy
    respond_to do |format|
      format.html {render redirect_to rank_path}
      format.js { render '/ranks/index.js.erb'}
    end
  end

  private
    def rank_params
      params.require(:ranks).permit(
        :police_officer,
        :sergeant,
        :lieutenant,
        :captain,
        :detective_1,
        :detective_2,
        :detective_3
      )
      end

 
  
end
