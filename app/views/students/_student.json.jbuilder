json.extract! student, :id, :name, :collage, :email, :contact, :course, :branch, :image, :registration_number, :created_at, :updated_at
json.url student_url(student, format: :json)
