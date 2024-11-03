json.extract! wizard, :id, :name, :email, :password_digest, :date_of_birth, :bio, :muggle_relative, :house, :profile_image, :created_at, :updated_at
json.url wizard_url(wizard, format: :json)
