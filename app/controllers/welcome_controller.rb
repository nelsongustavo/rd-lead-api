class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tracks = @user.tracks
  end
end
