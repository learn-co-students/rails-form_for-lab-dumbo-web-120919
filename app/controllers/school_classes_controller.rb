class SchoolClassesController < ApplicationController


    #READ
    def index
        @school_classes = SchoolClass.all

        render :index
    end

    def show
        @school_class = SchoolClass.find(params[:id])

        render :show
    end


    #CREATE
    def new
        @school_class = SchoolClass.new

        render :new
    end

    def create
        school_class = SchoolClass.create(school_class_params)

        redirect_to school_class_path(school_class.id)
    end

    #UPDATE
    def edit
        @school_class = SchoolClass.find(params[:id])

        render :edit
    end

    def update
        school_class = SchoolClass.find(params[:id])
        school_class.update(school_class_params)

        redirect_to school_class_path(school_class.id)
    end

    #DELETE
    def destroy
        school_class = SchoolClass.find(params[:id])
        school_class.destroy

        redirect_to school_classes_path
    end

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end