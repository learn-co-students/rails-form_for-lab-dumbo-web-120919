class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    #byebug
    @student = Student.create(post_params(:first_name, :last_name))
	  redirect_to student_path(@student)
  end

  def show
    #byebug
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    #byebug
    @student = Student.find(params[:id])
	  @student.update(post_params(:first_name, :last_name))
	  redirect_to student_path(@student)
  end

  private

  def post_params(*args)
		params.require(:student).permit(*args)
	end
end
