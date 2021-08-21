class HomeController < ApplicationController
  def index
    @comments = Comment.all.order(created_at: :desc).page params[:page]
  end
end
