class CreateEmployeeLeaves < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_leaves do |t|
      t.date :start_date
      t.date :end_date
      t.string :half 
      t.string :reason
      t.references :request_employee, index: true
      t.references :action_employee, index: true
      t.timestamps
    end
    add_foreign_key :employee_leaves, :employees, column: :request_employee_id
    add_foreign_key :employee_leaves, :employees, column: :action_employee_id
  end
end
