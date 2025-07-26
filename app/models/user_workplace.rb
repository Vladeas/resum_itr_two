class UserWorkplace < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    [ "company_name", "content", "created_at", "end_date", "id", "position", "start_date", "updated_at", "user_id" ]
  end
end
