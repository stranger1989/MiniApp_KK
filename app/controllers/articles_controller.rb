class ArticlesController < ApplicationController

  def index
    @article = Article.order("id DESC").page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    Article.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    params.require(:article).permit(:title,:article).merge(user_id:current_user.id)
  end
end
