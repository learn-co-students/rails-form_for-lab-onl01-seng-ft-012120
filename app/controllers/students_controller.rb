class StudentsController < ApplicationController

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def student_params(*args)
        params.require(:student).permit(:first_name, :last_name)
    end

end