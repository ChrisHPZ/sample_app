class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    # Define the user object
    user = User.find_by(email: params[:session][:email].downcase)
    # Compare the stored data of user and compare it to its respective password
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_url
  end
end
