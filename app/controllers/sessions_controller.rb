class SessionsController < ApplicationController

  def index
    if session[:name]
      @name = session[:name]
    end
  end

  def new

  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else  
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end


end
