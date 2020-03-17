class StudentsController < ApplicationController
  
def index
    @sstudents = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :title))
    if @student.save
      flash[:success] = "Student successfully created"
      redirect_to @student
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
      if @student.update_attributes(params.require(:student).permit(:first_name, :last_name))
        flash[:success] = "Student was successfully updated"
        redirect_to @student
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  
end
