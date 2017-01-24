class AddUserIdToAssessments < ActiveRecord::Migration
  def change
    add_column :assessments, :user_id, :integer
  end
end
