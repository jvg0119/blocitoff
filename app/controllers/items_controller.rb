class ItemsController < ApplicationController

  before_action :authenticate_user!

  def create
  	#@user = User.find(params[:user_id])
  	@user = current_user
  	@item = @user.items.new(item_params)
  	if @item.save
  	  flash[:notice] = "Item was created."
  	   redirect_to user_path(@user) # user show page
  	else
  	  flash[:error] = "Error saving item. Please try again."
  	end
  end

  def destroy
  	#@user = User.find(params[:user_id])
  	@user = current_user
  	@item = @user.items.find(params[:id]) 
  	if @item.destroy
  	  flash[:notice] = "Item was deleted."
  	else
  	  flash[:error] = "Error deleting item. Please try again."
  	end
  	respond_to do |format| 
  	  format.html { redirect_to user_path(@user) }
  	  format.js 
  	end 	
  end

private
  def item_params
  	params.require(:item).permit(:name)
  end

end
