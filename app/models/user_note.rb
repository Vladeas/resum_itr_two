class UserNote < ApplicationRecord
  belongs_to :user

   def self.ransackable_attributes(auth_object = nil)
    [ "content", "created_at", "id", "private", "title", "updated_at", "user_id" ]
  end
end
