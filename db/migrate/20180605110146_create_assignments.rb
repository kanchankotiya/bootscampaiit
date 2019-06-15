class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :topic
      t.text :content

      t.timestamps
    end
  end
end
