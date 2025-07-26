class CreateUserLanguages < ActiveRecord::Migration[7.2]
  def change
    create_table :user_languages do |t|
      t.string :language
      t.string :proficiency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
