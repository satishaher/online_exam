class StudentsController < ApplicationController
  
  def index
  	@teacher = current_user.teacher	
  	if @teacher.present? 
  		@assessments = @teacher.assessments.live
  	else
  		@assessments = []
  	end 
  end

  def live_assessments
  	@assessments = current_user.teacher.assessments.live	
  end

end
