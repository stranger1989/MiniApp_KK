class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :destroy, :update, :edit]

  def index
    @article = Article.order("id DESC").page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end

  def show
  end

  def create
    Article.create(create_params)
    redirect_to action: :index
  end

  def destroy
    @article.destroy if @article.user_id == current_user.id
    redirect_to action: :index
  end

  def update
    @article.update(create_params) if @article.user_id == current_user.id
    redirect_to action: :index
  end

  def edit
  end

  private
  def create_params
    params.require(:article).permit(:title,:article).merge(user_id:current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
