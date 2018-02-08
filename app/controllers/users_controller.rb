class UsersController < ApplicationController

  #  ActionController::InvalidAuthenticityToken 
  # skip_before_filter :verify_authenticity_token
  # before_action :login?

  def index
    @users = User.all
    render :json => {
        data: @users,
        status: 200
    }
  end

  def show
    @user = User.find_by_id(params[:id])
    render :json => {
        data: @user, status: 200
    }
  end

  def create
    authorization = request.headers['Authorization']
    # login = User.find_by_auth_token authorization
    # render :json => {
    #     data: login?
    # }
  end

end
