class CreateUserProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :user_projects do |t|
      t.string :title
      t.string :link
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
