class StudentsController < ApplicationController


    #READ
    def index
        @students = Student.all

        render :index
    end

    def show
        @student = Student.find(params[:id])

        render :show
    end


    #CREATE
    def new
        @student = Student.new

        render :new
    end

    def create
        student = Student.create(student_params)

        redirect_to student_path(student.id)
    end

    #UPDATE
    def edit
        @student = Student.find(params[:id])

        render :edit
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)

        redirect_to student_path(student.id)
    end

    #DELETE
    def destroy
        student = Student.find(params[:id])
        student.destroy

        redirect_to students_path
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end