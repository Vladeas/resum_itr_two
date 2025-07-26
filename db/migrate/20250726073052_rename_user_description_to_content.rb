class RenameUserDescriptionToContent < ActiveRecord::Migration[7.2]
  def change
    rename_column :users, :description, :content
  end
end
