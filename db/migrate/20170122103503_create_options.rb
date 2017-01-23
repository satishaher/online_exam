class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :text
      t.boolean :correct

      t.timestamps
    end
  end
end
