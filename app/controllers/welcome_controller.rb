class WelcomeController < ApplicationController

  def index
    @posts = Post.all.limit(3).order("created_at desc")
    @projects = Project.all.limit(3).order("created_at desc")
    @doctors = Doctor.all.limit(3).order("created_at desc")
  end



end
