class HomeController < ApplicationController

def index

  @posts = Post.visible
  @categories = Category.all

  render layout: 'home'

end

end
