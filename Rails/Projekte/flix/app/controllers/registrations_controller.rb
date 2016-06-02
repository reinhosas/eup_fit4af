class RegistrationsController < ApplicationController
before_action :set_movie

	def index
		@registrotions = @movie.registrations
	end

	def new
		@registration = @movie.registrations.new
	end

	def create
		@registration = @movie.registrations.new(registration_params)
		if @registration.save
			redirect_to movie_path(@movie.id), notice: "Die Registrierung wurde gespeichert"
		else
			render :new, notice: "Fehler beim Speichern"
		end
	end

	def destroy
		@registration = Registration.find(params[:id])
		@registration.destroy
		redirect_to movie_registrations_url(@movie.id), notice: "Registrierung von #{@registration.name} erfolgreich gelöscht"
	end

	private
		def registration_params
			params.require(:registration).permit(:name, :email, :how_heard, :event_id)
		end
		def set_movie
			@movie = Movie.find(params[:event_id])
		end
end
