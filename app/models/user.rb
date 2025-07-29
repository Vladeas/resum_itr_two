class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_projects, foreign_key: "user_id"
  has_many :user_notes, foreign_key: "user_id"
  has_many :user_languages, foreign_key: "user_id"
  has_many :user_skills, foreign_key: "user_id"
  has_many :user_academics, foreign_key: "user_id"
  has_many :user_workplaces, foreign_key: "user_id"

  def full_name
    forename.to_s + " " + surname.to_s
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "date_of_birth", "driving_license", "email", "encrypted_password", "forename", "github",
     "id", "id_value", "linkedin", "phone_number", "remember_created_at", "reset_password_sent_at", "reset_password_token",
      "surname", "updated_at", "content" ]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "user_academics", "user_languages", "user_notes", "user_projects", "user_skills", "user_workplaces" ]
  end
end
