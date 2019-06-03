class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    if session[:name]
      redirect_to '/'
    elsif !params[:name]
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/login'
  end
end
