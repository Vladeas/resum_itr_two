class CreateUserSkills < ActiveRecord::Migration[7.2]
  def change
    create_table :user_skills do |t|
      t.string :skill
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
