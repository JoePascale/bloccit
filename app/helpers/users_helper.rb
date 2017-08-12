module UsersHelper
  def show_posts_if_user_has_them
    if @user.posts.exists?
      @user.posts
    else
      "#{@user.name} has not made any posts yet."
    end
  end

  def show_comments_if_user_has_them
    if @user.comments.exists?
      @user.comments
    else
      "#{@user.name} has not made any comments yet."
    end
  end
end
