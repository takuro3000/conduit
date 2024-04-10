class ArticlesController < ApplicationController
    def index
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
        @genre=Genre.new(name: params[:name])
        @genre.save
        redirect_to("/articles/home")
    end
end
