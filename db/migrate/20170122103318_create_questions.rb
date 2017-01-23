class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :rating, :default => 1

      t.timestamps
    end
  end
end
