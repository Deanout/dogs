class CommentsController < ApplicationController
	def create
    @litter = Litter.find(params[:litter_id])
    @comment = @litter.comments.create(params[:comment].permit(:comments, :name, :user))
    @comment.user = current_user
    @comment.save!

    if @comment.save
      redirect_to litter_path(@litter)
    else
      render 'new'
    end
  end

  def destroy
    @litter = Litter.find(params[:litter_id])
    @comment = @litter.comments.find(params[:id])
    @comment.destroy
    redirect_to litter_path(@litter)
  end
end
