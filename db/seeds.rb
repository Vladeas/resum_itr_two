# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

case Rails.env
when "development"
    User.create!(email: "user@example.com",
            password: ENV["SEED_PASSWORD"],
            password_confirmation: ENV["SEED_PASSWORD"]) if !User.find_by_email("user@example.com")

    User.create!(email: "user2@example.com",
            password: ENV["SEED_PASSWORD"],
            password_confirmation: ENV["SEED_PASSWORD"]) if !User.find_by_email("user2@example.com")
    AdminUser.create!(email: "admin@example.com",
            password: ENV["SEED_PASSWORD"],
            password_confirmation: ENV["SEED_PASSWORD"]) if !AdminUser.find_by_email("admin@example.com")
when "production"
  # A secret tool for later ;)
end
