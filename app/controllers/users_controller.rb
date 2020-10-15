class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show, :edit, :likes, :myteams]
  before_action :user_myteams_present?, only: [:myteams]
  
  def index
    @messages = Message.all.order(id: :desc).page(params[:page]).per(10)
    if logged_in?
      @message = current_user.messages.build
    end
    
    @all_ranks = Player.find(Myplayer.group(:player_id).order('count(player_id) desc').limit(10).pluck(:player_id))
  end

  def show
    @user = User.find(params[:id])
    @messages = current_user.messages.order(id: :desc).page(params[:page]).per(10)
    counts(@user)
    @featured = @user.featured
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = 'アカウント作成が完了しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'アカウント作成に失敗しました。'
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if current_user == @user
      if @user.update(edit_user_params)
        flash[:success] = 'プロフィールの編集が完了しました。'
        redirect_to @user
      else
        flash.now[:danger] = 'プロフィールの編集に失敗しました。'
        render :edit
      end
    else
      redirect_to root_url
    end
  end
  
  def likes
    @user = User.find(params[:id])
    @likes = @user.likes.page(params[:page])
    counts(@user)
  end
  
  def myteams
    @user = User.find(params[:id])
    @team = @user.team
    @post = @user.team.posts.build
    @posts = @team.posts.order(created_at: :desc).page(params[:page])
  end
  
  def featured
    @teams = Team.all
    @team_id = params[:team_id]
    if @team_id.present?
      @players = Player.where(team_id: @team_id)
    else
      @players = []
    end
    @user = User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def edit_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :team_id)
  end
  
  def user_myteams_present?
    unless current_user.team.present?
      flash[:success] = '掲示板にアクセスするには好きな球団の選択が必要です。'
      redirect_to edit_user_path(current_user)
    end
  end
end
