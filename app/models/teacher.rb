class Teacher < User
	has_many :students, class_name: 'User', foreign_key: "user_id"

	has_many :assessments, foreign_key: "user_id"
end
