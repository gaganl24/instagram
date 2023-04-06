class PostController < ApplicationController
  def popular
    @posts = Post.joins(:likes).group(:id).order("count(*) desc").paginate(:page => params[:page], :per_page => 18)
  end
end
