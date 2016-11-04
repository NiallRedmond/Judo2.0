json.extract! student, :id, :student_name, :email, :dob, :belt, :gender, :photo, :score, :judo_class_id, :password_digest, :created_at, :updated_at
json.url student_url(student, format: :json)