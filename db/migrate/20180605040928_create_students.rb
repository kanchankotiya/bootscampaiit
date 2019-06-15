class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :collage
      t.string :email
      t.string :contact
      t.string :course
      t.string :branch
      t.string :image
      t.string :registration_number

      t.timestamps
    end
  end
end
