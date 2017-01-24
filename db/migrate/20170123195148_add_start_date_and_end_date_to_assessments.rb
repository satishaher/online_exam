class AddStartDateAndEndDateToAssessments < ActiveRecord::Migration
  def change
    add_column :assessments, :start_date, :datetime
    add_column :assessments, :end_date, :datetime
  end
end
