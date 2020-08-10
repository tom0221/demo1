class ImageCommentsController < ApplicationController
#メモ、コメント用コントローラー
	def create
		image = Image.find(params[:image_id])
		comment = current_user.image_comments.new(image_comment_params)
		comment.image_id = image.image_id
		comment.save
		redirect_to image_path(image)
	end

	def destroy
		
	end

	private
	def image_comment_params
		params.require(:image_comment).permit(:comment)
	end
end
