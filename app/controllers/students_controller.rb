class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(first_name: params[:student][:first_name],second_name: params[:student][:second_name])
    redirect_to student_path
  end

  def new
  end

end
