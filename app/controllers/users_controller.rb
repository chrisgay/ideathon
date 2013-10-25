class UsersController < ApplicationController   
    def intro
      render('new')
    end
    
    def new
      # Create the user from params
      @user = User.new
    end  

    def create
      # Create the user from params
      @user = User.new(user_params)
      if @user.save
        # Deliver the signup_email
        Notifier2.signup_email(@user).deliver
        redirect_to(:back) 
      else
        render :action => 'new'
      end
    end
    
    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email) if params[:user]
    end    
    
end
