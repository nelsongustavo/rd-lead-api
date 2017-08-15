class Api::V1::TracksController < Api::V1::BaseController
  before_action :set_user
  before_action :set_user_track, only: [:show, :update, :destroy]

  # GET /users/:user_id/tracks
  def index
    render json: @user.tracks,  status: :ok
  end

  # GET /users/:user_id/tracks/:id
  def show
    render json: @track, status: :ok
  end

  # POST /users/:user_id/tracks
  def create
    @user.tracks.create!(track_params)
    render json: @user, status: :created
  end

  # PUT /users/:user_id/tracks/:id
  def update
    @track.update(track_params)
    head :no_content
  end

  private

  def track_params
    params.permit(:url, :date)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_user_track
    @track = @user.tracks.find_by!(id: params[:id]) if @user
  end
end
