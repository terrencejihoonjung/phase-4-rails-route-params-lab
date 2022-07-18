class StudentsController < ApplicationController

  def index
    if params[:name]
      student = Student.by_name(params[:name])
    else
      student = Student.all
    end
    
    render json: student
  end

  def get_info
    student = Student.find(params[:id])
    render json: student
  end

end
