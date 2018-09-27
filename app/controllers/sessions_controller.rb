class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to '/login', alert: "Name must be supplied!"
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
