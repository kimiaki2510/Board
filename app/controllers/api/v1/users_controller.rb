class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  def index
    user = User.all
    render json: { data: user }
  end

  def show
    set_user
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
    set_user
    user.destroy
    render json: { data: user }
  end

  private

    def set_user
      user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password_digest)
    end

end
