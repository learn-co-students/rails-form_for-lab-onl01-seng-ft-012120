class SchoolClassesController < ApplicationController

    def index
        @classes = SchoolClass.all

    def create
        @class = SchoolClass.new(class_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    def new
        @class = SchoolClass.new
    end

    def class_params(*args)
        params.require(:school_class).permit(:title, :room_number)
    end

end