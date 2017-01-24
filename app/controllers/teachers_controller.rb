class TeachersController < ApplicationController
  def my_students
  	@users = current_user.students
  end
end
