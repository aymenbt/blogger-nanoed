class CommentArticlesController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment_article = @article.comment_articles.create(params[:comment_article].permit(:name, :body))
        redirect_to article_path(@article)
     end
end
