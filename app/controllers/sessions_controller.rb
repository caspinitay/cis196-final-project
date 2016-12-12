class SessionsController < ApplicationController
  def new
    render 'sessions/login.html'
  end

  def create
    @user = User.find_by(name: params[:name])
    # if @user.nil?
    #   redirect_to '/login'
    # elsif @user.password_hash.nil?
    #   redirect_to '/login'
    # elsif @user.password_hash == params[:password_hash]
    #   session[:user_id] = @user.id
    #   redirect_to "/users/#{@user.id}"
    # else
    #   redirect_to '/login'
    # end

    if @user.password_hash == params[:password_hash]
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
