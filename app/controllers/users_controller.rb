class UsersController < ApplicationController
  def show
    @article = Article.where(user_id:params[:id]).order("id DESC").page(params[:page]).per(5)
  end
end
