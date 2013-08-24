class CommentsController < ApplicationController
  def index
    @commentable = find_commentable
    @comments = @commentable.comments
  end

  def create
    if current_user
      @commentable = find_commentable
      @comment = @commentable.comments.build(params[:comment])
      @comment.user_id = current_user.id
      if @comment.save
        flash[:notice] = "Successfully created comment"
        redirect_to :back
      else
        render :action => 'new'
      end
    else
      flash[:notice] = "Sign up to add a comment"
      redirect_to '/signup'
    end
  end

# private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
