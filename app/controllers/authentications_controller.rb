class AuthenticationsController < ApplicationController
  def signin
  end

  def twitter
     omni = request.env["omniauth.auth"]
     authentication = Authentication.find_by_provider_and_uid(omni['provider'], omni['uid'])

     if authentication
       flash[:notice] = "Authentication successful."
       sign_in_and_redirect(:user, authentication.user)
     else
       user = User.new 
       user.apply_omniauth(omni)
                              if user.save
         flash[:notice] = "Logged in."
         sign_in_and_redirect User.find(user.id)             
       else
         session[:omniauth] = omni.except('extra')
         redirect_to new_user_registration_path
       end
     end 
   end

  def index
    @authentications = Authentication.all
  end

  def create
    @authentication = Authentication.new(params[:authentication])
    if @authentication.save
      redirect_to authentications_url, :notice => "Successfully created authentication."
    else
      render :action => 'new'
    end
  end

  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy
    redirect_to authentications_url, :notice => "Successfully destroyed authentication."
  end
end