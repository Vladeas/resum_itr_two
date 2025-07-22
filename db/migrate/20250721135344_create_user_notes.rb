class CreateUserNotes < ActiveRecord::Migration[7.2]
  def change
    create_table :user_notes do |t|
      t.string :title
      t.boolean :private
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
