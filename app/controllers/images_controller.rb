class ImagesController < ApplicationController

	def create
		@image = Image.new(image_params)
		@image.user_id = current_user.id
		@image.save
		redirect_to request.referer
	end

	def index
		@image = Image.new
		@images = Image.all

	end

	def show
		@image = Image.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def image_params
		params.require(:image).permit(:title, :boby, :image)
	end
end
