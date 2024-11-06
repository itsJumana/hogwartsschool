# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the database with only one administrator, Dumbledore
unless Wizard.find_by(email: 'Dumbledore@great.com')
  dumbledore = Wizard.create!(
    name: "Albus Dumbledore",
    email: "Dumbledore@great.com",
    password: "avada kedavra",
    date_of_birth: Date.new(1881, 8, 15),
    house: "Gryffindor",
    bio: "The greatest wizard of all time.",
    muggle_relative: false,
    role: Wizard::ADMIN_ROLE
  )

  puts "Administrator Dumbledore created successfully."
else
  puts "Dumbledore already exists in the system."
end
