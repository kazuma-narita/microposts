class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.favorite!(@micropost)
  end

  def destroy
    @micropost = Favorite.find(params[:id])
    puts "micropost.id#{@micropost.id}"
    current_user.unfavorite!(@micropost)
  end
  
  def index
    @microposts = current_user.favorite_microposts.order(created_at: :desc)
  end
end