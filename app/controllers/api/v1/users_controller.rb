class Api::V1::UsersController < ApplicationController
  #before_action :set_user, only: [:show, :destroy]

  def index
    if params[:password]
      current_user = User.find_by(password: params[:password])
      render json: { data: current_user }
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

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { data: user }
  end

  def login
    current_user = User.find(email: user_params[:email], password: user_params[:password])
    return render json: { status: 422, message: '認証に失敗しました'} unless current_user
  rescue => e
    logger.error(e.message)
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_digest, :token)
    end
end
