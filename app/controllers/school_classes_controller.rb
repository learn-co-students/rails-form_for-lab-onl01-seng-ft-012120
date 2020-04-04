# frozen_string_literal: true

class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(classes_params)
    if @school_class.save
      redirect_to @school_class

    else
      render :new
    end
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
      
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(classes_params)
    redirect_to @school_class
      
  end

  

  def show
    @school_class = SchoolClass.find(params[:id])
  end



  private

  def classes_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
