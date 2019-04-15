class UsersController < ApplicationController
	
  def index
    @user = User.all
  end

	def show
		@user = User.find(params[:id])
	end

	def edit
    @user = User.find(params[:id])
	end


	def update
  @user = User.find(params[:id])

  if @user.update_attributes(user_params)
    redirect_to :action => :show, :id => @user.id
  else
    render 'edit'
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name,:username,:email,:typeofuser_id)
    end
end
