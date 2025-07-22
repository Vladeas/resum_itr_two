class RenameDescriptionToContent < ActiveRecord::Migration[7.2]
  def change
    rename_column :user_projects, :description, :content
  end
end
