class Assessment < ActiveRecord::Base
	has_many :questions
	
	accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:text].blank? }, :allow_destroy => true
	
	validates :name, :presence => true

end
