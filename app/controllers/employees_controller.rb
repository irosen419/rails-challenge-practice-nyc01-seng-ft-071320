class EmployeesController < ApplicationController
    def show
        @employee = Employee.find(params[:id])
    end
    def destroy
        @employee = Employee.find(params[:id])
        company = @employee.company
        @employee.destroy
        redirect_to company_path(company)
    end
end