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
            password_confirmation: ENV["SEED_PASSWORD"],
            id: 1,
            forename: "Vlad",
            surname: "Danciu",
            date_of_birth: "1997-09-17",
            phone_number: "0766737200",
            github: "https://github.com/Vladeas",
            linkedin: "https://www.google.com/search?num=10&newwindow=1&client=firefox-b-lm&sca_esv=4f09092a201a8ac4&channel=entpr&sxsrf=AE3TifPvqdsQwJokTFocSPxoFDX9POC_Qg:1753512248292&q=cats&udm=2&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZ1Y6MJ25_tmWITc7uy4KIeoJTKjrFjVxydQWqI2NcOhYPURIv2wPgv_w_sE_0Sc6QqqU7k8cSQndc5mTXCIWHa5yWh8UZLeaMB2TzsL707pc1UdUOyvWrdH9KzB0rwa56e4sZMK6yB9HCSc5sZ95qH7WhtZ4UgYYwhFKAtUJ9yDKl7bQ8&sa=X&ved=2ahUKEwjPzKyV9tmOAxWjW0EAHfaBM28QtKgLKAF6BAgqEAE&biw=1920&bih=923&dpr=1#vhid=12ydIzin8CyDxM&vssid=mosaic",
            driving_license: "B",
            location: "Cluj-Napoca, Ro",
            content: "
            Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat.
            In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus
            nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu.
            Ad litora torquent per conubia nostra inceptos himenaeos.

                Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat.
                In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus
                nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu.
                Ad litora torquent per conubia nostra inceptos himenaeos.") if !User.find_by_email("user@example.com")

        User.create!(email: "user2@example.com",
                password: ENV["SEED_PASSWORD"],
                password_confirmation: ENV["SEED_PASSWORD"]) if !User.find_by_email("user2@example.com")

        AdminUser.create!(email: "admin@example.com",
                password: ENV["SEED_PASSWORD"],
                password_confirmation: ENV["SEED_PASSWORD"]) if !AdminUser.find_by_email("admin@example.com")

        UserLanguage.create!(language: "english",
                proficiency: "advanced",
                user_id: 1)

        UserLanguage.create!(language: "romanian",
                proficiency: "native",
                user_id: 1)

        UserAcademic.create!(name: "Technical University of Cluj Napoca",
                status: "Fourth year - unfinished",
                user_id: 1,
                content: "Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat.
                In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus")

        UserAcademic.create!(name: "Cambridge Advanced English",
                status: "Fourth year - unfinished",
                user_id: 1,
                content: "Level 3/C2,Score 200")

        UserWorkplace.create!(company_name: "Duty Ventures",
                position: "Web developer",
                start_date: "2021-07",
                end_date: "2022-08",
                content: "Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat.
                In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus
                nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu.
                Ad litora torquent per conubia nostra inceptos himenaeos.",
                user_id: 1)

        UserSkill.create!(skill: "OOP/Git",
                user_id: 1)

        UserSkill.create!(skill: "Ruby on Rails",
                user_id: 1)

        UserSkill.create!(skill: "HTML/CSS",
                user_id: 1)

        UserSkill.create!(skill: "Python",
                user_id: 1)

        UserSkill.create!(skill: "Communiaction/Teamwork",
                user_id: 1)

        UserSkill.create!(skill: "Desire to learn",
                user_id: 1)

when "production"
  # A secret tool for later ;)
end
