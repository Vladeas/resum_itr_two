class UserLanguage < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "id", "language", "proficiency", "updated_at", "user_id" ]
  end
end
