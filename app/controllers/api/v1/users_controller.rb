class Api::V1::UsersController < ApplicationController
  #before_action :set_user, only: [:show, :destroy]

  def index
    user = User.all
    render json: { data: user }
  end

  def show
    user = User.find(params[:id])
    render json: { data: user }
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 201, data: user }
    else
      render json: { status: 422, data: user }
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { data: user }
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password_digest)
    end
end
