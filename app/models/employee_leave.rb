class EmployeeLeave < ApplicationRecord
    belongs_to :request_employee, class_name: "Employee", foreign_key: "request_employee_id"
    belongs_to :action_employee, class_name: "Employee", foreign_key: "action_employee_id"
end
