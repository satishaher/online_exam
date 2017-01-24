class Assessment < ActiveRecord::Base

	has_many :questions

	has_many :attempts
	has_many :students, through: :attempts

	
	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:text].blank? }, :allow_destroy => true
	
	validates :name, :presence => true
	validate  :date_validate

	scope :live, -> {where("? BETWEEN start_date AND end_date", Time.now.to_date)}

	def date_validate
		errors.add(:base, 'End date should be after Start date') if start_date.to_i > end_date.to_i
	end



end
