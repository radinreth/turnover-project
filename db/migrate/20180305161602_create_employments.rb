class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.date :hire_date
      t.date :leave_date
      t.string :department
      t.references :company, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
