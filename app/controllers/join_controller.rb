class JoinController < ApplicationController
  #get 'trip.id/join'
  def new
    @user = User.find(session[:user_id])
    @trip = Trip.find(params[:trip_id])
    @user.trips.append @trip unless @user.trips.include? @trip
    redirect_to "/trips/#{@trip.id}"
  end

  def leave
  	@user = User.find(session[:user_id])
  	@trip = Trip.find(params[:trip_id])
  	@user.trips.delete @trip
  	redirect_to "/trips/#{@trip.id}"
  end
end
