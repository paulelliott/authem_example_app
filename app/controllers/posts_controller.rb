class PostsController < ApplicationController
  before_filter :require_user, except: :index

  expose(:post)
  expose(:posts) { Post.all }

  def create
    if post.save
      redirect_to posts_path, flash: { notice: 'Post created' }
    else
      flash[:error] = post.errors.full_messages.to_sentence
      render :new
    end
  end
end
