class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |post, index|
      index % 5 == 0 ? post.title = "SPAM" : post.title
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
