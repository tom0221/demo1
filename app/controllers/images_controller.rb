class ImagesController < ApplicationController

	def new
		@book = Book.new
	end

	def create
		@image = Image.new(image_params)
		@image.user_id = current_user.id
		if @image.save
			redirect_to images_path
		else
			render :index
		end
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
		@image = Image.find(params[:id])
		@image.destroy
		redirect_to images_path
	end

	private
	def image_params
		params.require(:image).permit(:title, :body, :image)
	end
end
