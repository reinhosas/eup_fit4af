class ContentsController < ApplicationController
	before_action :set_content, only:[:show, :edit, :update, :destroy]
	
	def index
		@contents = Content.all
	end

	def new
		@content = Content.new
	end
	def edit
	end
	def update
		if @content.update(content_params)
			flash[:notice] = "Änderung erfolgreich"
			redirect_to contents_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen"
			render :edit
		end
	end
	def show
	end
	def create
		@content = Content.new(content_params)
		if @content.save
			flash[:notice] = "Eintrag erfolgreich erstellt"
			redirect_to contents_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen"
			render :new
		end
	end
	def destroy
		@content.destroy
		redirect_to contents_url, alert: "gelöscht!"
	end

	private
	def content_params
		params.require(:content).permit(:title, :description, :date)
	end
	def set_content
		@content = Content.find(params[:id])
	end
end
