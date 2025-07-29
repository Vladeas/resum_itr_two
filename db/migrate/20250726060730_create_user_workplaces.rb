class CreateUserWorkplaces < ActiveRecord::Migration[7.2]
  def change
    create_table :user_workplaces do |t|
      t.string :company_name
      t.string :position
      t.text :content
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
