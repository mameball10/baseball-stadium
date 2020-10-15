class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to root_url
    end
  end
  
  def counts(user)
    @count_messages = user.messages.count
    @count_likes = user.likes.count
    @count_featured = user.featured.count
  end
end
