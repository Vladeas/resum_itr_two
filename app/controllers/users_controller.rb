class UsersController < ApplicationController
  before_action :authenticate_user!, except: [ :index ]
  def index
    @user = User.first
  end

  def update
  end
end
