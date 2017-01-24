class StudentTest

	def initialize(student_id, test_id)
		@test_id = test_id
		Attempt.create(user_id: student_id, assessment_id: test_id)
	end

	def current_question
		assessment = Assessment.find(@test_id)
		assessment.questions.first
	end

end