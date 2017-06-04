class WelcomeController < ApplicationController

	def index
		#display all the received messages in database.
		@all_data = Datum.all
	end

	def create
		#If message is not define in 
		if(params[:message].nil?)
			@error_msg = "No parrameters passed, to POST DATA /create?message=hellofromMars"
		else
			@data = Datum.new(message: params[:message])
			@data.save
			@success_msg = "You have successfully put #{params[:message]} in the Database!"
		end
	end
end
