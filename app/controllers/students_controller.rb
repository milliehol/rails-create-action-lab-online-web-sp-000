class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
  @student = Post.new
  @post.first_name = params[:title]
  @post.description = params[:description]
  @post.save
  redirect_to post_path(@post)
  end

end
