class ToppagesController < ApplicationController
  def index
    @messages = Message.order(id: :desc).limit(5)
  end
end
