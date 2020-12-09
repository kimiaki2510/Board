class Api::V1::UsersController < ApplicationController
  #before_action :set_user, only: [:show, :destroy]

  def index
    if params[:uid]
      user = User.find_by(uid: params[:uid])
      render json: { data: user }
    else
      users = User.all
      render json: { data: users }
    end
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

  def update
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { data: user }
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_digest, :token)
    end
end
