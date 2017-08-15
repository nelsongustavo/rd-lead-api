class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    render json: @users,  status: :ok
  end

  # POST /users
  def create
    @user = User.create!(user_params)
    render json: @user, status: :created
  end

  # GET /users/:id
  def show
    render json: @user, status: :ok
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
    head :no_content
  end

  private

  def user_params
    params.permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
