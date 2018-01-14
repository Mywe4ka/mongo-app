class CommentsController < ApplicationController
  before_filter :set_article

  def create
    @comment = @article.comments.create!(comment_params)
    redirect_to @article, :notice => "Comment created!"  
  end

  private

  def set_article
  	@article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:name, :content)
  end
end
