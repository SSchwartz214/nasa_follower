class FavoritesController < ApplicationController
  before_action :user_signed_in?

  def index 
    @favorites = current_user.favorites.includes(:pic_of_day)
  end
  
  def create
    current_user.favorites.create(favorite_params)

    redirect_to favorites_path
  end

  def destroy
    @favorite = current_user.favorites.find(params[:id])
    current_user.favorites.delete(@favorite)

    redirect_to root_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:pic_of_day_id)
  end
end