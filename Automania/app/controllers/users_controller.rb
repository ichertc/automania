class UsersController < ApplicationController
  def index
  	@users = User.find(:all) 
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

end
