class Student < User
	belongs_to :teacher, class_name: 'User', foreign_key: 'user_id'
	# has_many :attempts, class_name: 'User', foreign_key: 'user_id'
	# has_many :assessments, through: :attempts, class_name: 'User', foreign_key: 'user_id'
	# has_many :assessments, :through => :attempts

	def pending_assesments
		teacher.try('assesments').to_i
	end

	def inporgress_assesments
		teacher.try('assesments').to_i
	end
end
