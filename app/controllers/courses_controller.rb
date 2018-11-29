class CoursesController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def update
    course = Course.find_by(id: params[:id])
    course.update(course_params)
    redirect_to courses_path
  end

  def new
    @course = Course.new
  end

  def create
    course = Course.create(course_params)
    redirect_to courses_path
  end

  def destroy
    course = Course.find_by(id: params[:id])
    course.destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :img, :short_description, :long_description)
  end
end