class WelcomesController < ApplicationController

  def index
    if current_user.type == 'Student'
      redirect_to students_path 
    else
      redirect_to assessments_path 
    end
  end

end
