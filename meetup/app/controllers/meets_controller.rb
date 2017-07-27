class MeetsController < ApplicationController
  before_action :authenticate_mode!

  def index
    @meets = Meet.all
  end

  def new
    @meet = Meet.new
  end

  def show
    @meet = Meet.find(params[:id])
  end

  def edit
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.find(params[:id])
    @meet.update(meet_params)

    redirect_to meets_path ,notice: "update success"
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy

    flash[:alert] = "meetup  deleted"
    redirect_to meets_path
  end

  def create
    @meet = Meet.new(meet_params)
    @meet.save

    redirect_to meets_path
  end

  private

  def meet_params
    params.require(:meet).permit(:title,:description)
  end

end
