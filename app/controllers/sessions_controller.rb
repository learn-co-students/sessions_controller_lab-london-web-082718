class SessionsController < ApplicationController

  def new
        # nothing to do here!
  end

  def create
    if params[:name].blank?

      # THANKS ALI - https://github.com/learn-co-students/sessions_controller_lab-london-web-082718/pull/1/files
      redirect_to :login
    else
      session[:name] = params[:name]
      # sessions is an object,  here, creating a key called :username, and the value is params[:username] - comes from the post
      redirect_to '/'
      # redirect_to root_path
    end
  end


  def destroy
    session.delete :name
    redirect_to root_path   # ALI's way
  end


end
