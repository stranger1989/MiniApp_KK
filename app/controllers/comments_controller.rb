class CommentsController < ApplicationController
def create
  Comment.create(permit_params)
  redirect_to controller: :articles ,action: :show, id: params[:article_id]
end

private

def permit_params
  params.require(:comment).permit(:comment).merge(article_id: params[:article_id],user_id:current_user.id)
end
end
