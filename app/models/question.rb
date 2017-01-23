class Question < ActiveRecord::Base
	has_many :options, :dependent => :destroy

	accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:text].blank? }, :allow_destroy => true

	belongs_to :assessment

	validates :text, :presence => true

	validate :options_checked

	private

	def options_checked
		errors.add(:base, 'Please check at least one option as correct answer.') unless options.map(&:correct).any?
	end

end
