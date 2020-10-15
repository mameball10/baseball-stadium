class MyplayersController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    player = Player.find(params[:player_id])
    current_user.select_myplayer(player)
    flash[:success] = '注目選手に設定しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    player = Player.find(params[:player_id])
    current_user.release_myplayer(player)
    flash[:success] = '選択を解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
