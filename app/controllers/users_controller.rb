class UsersController < ApplicationController
    before_action :forbid_login_user, {only: [:login, :login_form]}
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
    def login_form
    end
    def login
        @user=User.find_by(email: params[:email])
        if @user
            session[:user_id] = @user.id
            redirect_to("/articles/home")
        else
            @error_message = "This email or password is incorrect"
            @email=params[:email]
            @password=params[:password]
            render("users/login_form")
        end
    end
    def ensure_correct_user
        if @current_user.id != params[:id].to_i
            redirect_to("/articles/home")
        end
    end
end
