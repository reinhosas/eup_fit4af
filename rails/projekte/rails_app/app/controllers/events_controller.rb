class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy] #führt die find(params[:id]) für show edit und update aus
	
	def index
		@events = Event.upcoming
	end

	def show
		#@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_url
	end

	def edit
		#@event = Event.find(params[:id])
	end

	def update
		#@event = Event.find(params[:id])
		@event.update(event_params)
		redirect_to events_url
	end
	def destroy
		@event.destroy
		redirect_to events_url
	end
	private #alles was daunter kommt ist privat
		def event_params
			permitted_params = params.require(:event).permit(:name, :description, :location, :price, :start_at)
		end

		def set_event
			@event = Event.find(params[:id])
		end
end
