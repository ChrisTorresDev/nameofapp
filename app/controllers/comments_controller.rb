class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to product_path(@prodcut)
	end

	def destroy
	end

	private

	def comment_pramas
		params.require(:comment).permit(:user_id, :body, :rating)
	end
	
end
