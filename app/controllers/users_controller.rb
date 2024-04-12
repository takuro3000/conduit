class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(
            name: params[:name],
            email: params[:email],
            password: params[:password]
        )
        if @user.save
            redirect_to("/articles/home")
        else
            render("users/new")
        end
    end
    def login
    end
end
