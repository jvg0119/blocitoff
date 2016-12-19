class ItemsController < ApplicationController

  def create
  	@user = User.find(params[:user_id])
  	@item = @user.items.new(params_item)
  	if @item.save
  	  flash[:notice] = "Item was created."
  	  redirect_to user_path(@user) # user show page
  	else
  	  flash[:error] = "Error saving item. Please try again."
  	end
  end

private
  def params_item
  	params.require(:item).permit(:name)
  end

end
