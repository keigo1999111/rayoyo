class HomeController < ApplicationController

  before_action :forbid_login_user, {only: [:/]}
  def top
    @posts = Post.all.order(created_at: :desc)
  end


  def about
  end



end
