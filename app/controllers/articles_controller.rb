class ArticlesController < ApplicationController
    def index
        @articles=Article.all
    end
    def show
    end
    def new
    end
    def create
        @article=Article.new(
            title: params[:title],
            summary: params[:summary],
            content: params[:content]
        )
        @article.save
        @tag=Tag.new(name: params[:name])
        @tag.save
        @article_tag = ArticleTag.new(
            article_id: @article.id,
            tag_id: @tag.id
        )
        @article_tag.save
        redirect_to("/articles/home")
    end
end
