class UsersController < ApplicationController
  	
	#attr_accessible :user

  	def show
  		@user = User.find(params[:id])
  	end
	
  	def new
  		@user = User.new
  	end

	def create
	    @user = User.new(user_params)
	    #debugger
	    if @user.save
	    	log_in @user
	    	flash[:success] = "Welcome to the Sample App!"
	    	redirect_to @user
	      	# Handle a successful save.
			else
	      render 'new'
	    end
	end

	def destroy
	end

	private
  	
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end
end