class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :offices
    has_many :employees

    def employees_attributes=(employees_attributes)
        employees_attributes.values.each do |employee_attributes|
            if employee_attributes[:name].present?
                employee = Employee.find_or_create_by(employee_attributes)
                self.employees << employee
            end
        end
    end
end
