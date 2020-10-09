class PostsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @post = current_user.team.posts.build(post_params)
    if @post.save
      flash[:success] = 'コメントを投稿しました。'
      redirect_back(fallback_location: root_path)
    else
      @posts = current_user.posts.order(id: :desc).page(params[:page])
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      render 'user/myteams'
    end
  end
  
  def destroy
    @post.destroy
    flash[:success] = 'メッセージを削除しました。'
    redirect_back(fallback_location: root_path)
  end
  
  private
  
  def post_params
    params.require(:post).permit(:comment, :name)
  end
  
end
