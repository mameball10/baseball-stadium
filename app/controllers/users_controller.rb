class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show, :edit]
  
  def index
    if logged_in?
      @message = current_user.messages.build
      @messages = current_user.messages.order(id: :desc).page(params[:page])
    end
  end

  def show
    @user = User.find(params[:id])
    @messages = current_user.messages.order(id: :desc).page(params[:page])
    counts(@user)
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
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def edit_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :team_id)
  end
end
