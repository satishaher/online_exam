class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :assessment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
