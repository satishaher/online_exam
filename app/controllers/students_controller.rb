class StudentsController < ApplicationController
  
  def index
  	@teacher = current_user.teacher	
  	@assessments = @teacher.assessments.live	
  end

  def live_assessments
  	@assessments = current_user.teacher.assessments.live	
  end

end
