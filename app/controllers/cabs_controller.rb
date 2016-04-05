class CabsController < ApplicationController



	def index
		@cabs=Cab.where(:status => 1)
	end


	def book_cab
		@id=params[:user_id] 
		@car_type=params[:car_type]
		if params[:car_type].nil?
			@car_type='normal'
		end
		min_distance(params[:latitude],params[:longitude],@car_type)
		if @result.first.nil?
			render json: {
               status: 'success',
               distance: "No cab is available. Please try again later after some time" ,
               car_type:  @car_type
           }, status: 200
		else
			@user=User.find(@id)
			@car_id=@result.first['id']
			@user.car_id=@car_id
			@user.save
		@car=Cab.find(@car_id)
		@car.status=0
		if @car.save
			render json: {
               status: 'success',
               distance: "Your taxi is booked and this is " + @result.first['id'] + "miles away",
               car_type:  @car_type
           }, status: 200
		else
			render json: {
               status: 'failed',
               message: 'some_error_occurred'
           }, status: 200
		end
		end
		end


	def end_ride
		if params[:id].blank?
			render json: {
               status: 'success',
               distance: " Please enter the valid url "
           }, status: 200
         else
         	@id=params[:id]
         		@user=User.find(@id)
         	@car_id=@user.car_id
         	@user.car_id=0
         	@user.save

         	@car=Cab.find(@car_id)
         	@car.status=1
         	@car.latitude=@user.latitude
         	         	@car.longitude=@user.longitude
         	if @car.save
			render json: {
               status: 'success',
               message: "Thank you for using Quintype" ,
           }, status: 200
		else
			render json: {
               status: 'failed',
               message: 'Try again, if error occurs again please call on this number 8337863773'
           }, status: 200
		end

         end  
	end	


	def show

	end

	private
		def min_distance(lat,long,car_type)
			@result=ActiveRecord::Base.connection.select_all("call min_distance('#{lat}','#{long}',
				'#{car_type}')")
		end



end
