class UserProject < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    [ "content", "created_at", "id", "link", "title", "updated_at", "user_id" ]
  end
end
