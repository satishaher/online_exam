class AddAssesmentIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :assessment_id, :integer
  end
end
