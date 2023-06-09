class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show

        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.new(user_parameter)
        if user.save
            render json: user
        else  
            render json: user.errors.full_messages, status: :unprocessible_entity
        end
    end

    def update
        user = User.find(params[:id])
        if user.update(user_parameter)
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessible_entity
        end
    end

    def destroy
        user = User.find(params[:id])

        user.delete

        render json: user
    end

    protected
    def user_parameter
        params.require(:user).permit(:username)
    end
end