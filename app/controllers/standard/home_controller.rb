class Standard::HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'page'
  def index
    @post = Post.all.where(status_active: 'active')
    @comment = Comment.new
    # @comment_list = Comment.all.where(post_id: @post.id)
  end
   
  def create
    @post = Post.new(configure_create_params)
    if current_user.role == 'admin'
      @post.status_active = 'active'
    else
      @post.status_active = 'confirm'
    end
    @post.user_id = current_user.id
    if @post.save!
      redirect_to new_post_path,
      alert:'Post was successfully created.'
    else
      render new_post_path
      alert:'Post create error!!'
    end
  end
  def edit;end

  def update
    respond_to do |format|
      if @post.update(employee_params)
        redirect_to edit_post_path,
        alert:'Post was successfully updated.'
      else
        render post_path,
        alert:'Post update error!!'
      end
    end
  end
  
  def show;
  end

  def destroy
    @post.destroy
    redirect_to post_index_path, notice: 'Employee was successfully destroyed.'
  end

  private
  
  def set_post
    @post =Post.find(params[:id])
  end

  def configure_create_params
    params.require(:post).permit(:title, :content, :cover_image)
  end

end
