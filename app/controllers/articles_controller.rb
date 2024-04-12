class ArticlesController < ApplicationController
    def index
        @articles=Article.all
    end
    def show
        @article=Article.find_by(id: params[:id])
    end
    def new
        @article=Article.new
    end
    def create
        @article=Article.new(
            title: params[:title],
            summary: params[:summary],
            content: params[:content]
        )
        tags = params[:tags].split(",").map(&:strip)
        tags.each do |tag_name|
            tag = Tag.find_or_create_by(name: tag_name)
            @article.tags << tag
        end
        if @article.save
            redirect_to("/articles/home")
        else
            render("articles/new")
        end
    end
    def edit
        @article=Article.find_by(id: params[:id])
    end
    def update
        @article=Article.find_by(id: params[:id])
        @article.title=params[:title]
        @article.summary=params[:summary]
        @article.content=params[:content]
        @article.save
        tags = params[:tags].split(",").map(&:strip)
        tags.each do |tag_name|
            tag = Tag.find_or_create_by(name: tag_name)
            @article.tags << tag
        end
        redirect_to("/articles/home")
    end
end
