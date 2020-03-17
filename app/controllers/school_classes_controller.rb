class SchoolClassesController < ApplicationController
  
  def index
    @school_classes = SchoolClass.all
  end
  
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
  end
  
  def edit
    @school_class = SchoolClass.find(params[:id])
  end
  

  def create
    @school_class = SchoolClass.new(params.require(:school_class).permit(:room_number, :title))
    if @school_class.save
      flash[:success] = "School Class successfully created"
      redirect_to @school_class
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def update
    @school_class = SchoolClass.find(params[:id])
      if @school_class.update_attributes(params.require(:school_class).permit(:room_number, :title))
        flash[:success] = "SchoolClass was successfully updated"
        redirect_to @school_class
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  
end
