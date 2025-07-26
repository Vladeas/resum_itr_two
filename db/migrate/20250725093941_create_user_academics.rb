class CreateUserAcademics < ActiveRecord::Migration[7.2]
  def change
    create_table :user_academics do |t|
      t.string :name
      t.string :status
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
