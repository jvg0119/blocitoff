class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
  #	@user = User.find(params[:id])
  	@user = current_user
  	@items = @user.items
  end
end
