class UserSkill < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "id", "skill", "updated_at", "user_id" ]
  end
end
