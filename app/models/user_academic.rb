class UserAcademic < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    [ "content", "created_at", "id", "name", "status", "updated_at", "user_id" ]
  end
end
