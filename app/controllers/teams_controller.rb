class TeamsController < ApplicationController
  before_action :require_user_logged_in
  
  def show
    @team = Team.find(params[:id])
  end
end
