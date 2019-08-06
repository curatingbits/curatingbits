class HomeController < ApplicationController

def index
  if params[:category_id]
    @posts = Post.category(params[:category_id])
  else
    @posts = Post.visible
  end
    render layout: 'home'
end



end
