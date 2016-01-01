class EventsController < ApplicationController

	skip_before_filter  :verify_authenticity_token
	wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

	def index
		@event = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def edit
		@event = Event.find(params[:id])
	end

	def create
		@event = Event.new(event_params)

		render plain: params[:event].inspect

		if @event.save
			redirect_to @event
		else 
			render 'new'
		end
	end

	def update
  		@event = Event.find(params[:id])
 
  		if @event.update(event_params)
   			redirect_to @event
  		else
    		render 'edit'
  		end
	end

	private
		def event_params

			params.require(:event).permit(:event_id,
				 :date, :name, :location_name, :address, 
			 	 :city, :description)
		end

end
