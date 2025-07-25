class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_projects, foreign_key: "user_id"
  has_many :user_notes, foreign_key: "user_id"
  has_many :user_languages, foreign_key: "user_id"
  has_many :user_skills, foreign_key: "user_id"

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "date_of_birth", "description", "driving_license", "email", "encrypted_password", "forename", "github",
     "id", "id_value", "linkedin", "phone_number", "remember_created_at", "reset_password_sent_at", "reset_password_token",
      "surname", "updated_at" ]
  end
end
