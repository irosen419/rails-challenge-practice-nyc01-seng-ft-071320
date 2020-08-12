class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :update, :destroy]

    def show
        @company.employees.build
        @employees = Employee.all
    end

    def new
        @company = Company.new
    end

    def create
        @company.new(company_params)
        @company.save
    end

    def update
        @company.update(company_params)
        redirect_to company_path(@company)
    end

    def destroy
        @employee = Employee.find(params[:id])
        byebug
        @employee.destroy
        redirect_to company_path(@company)
    end

    private

    def company_params
        params.require(:company).permit(:name, :employees_attributes => [:name, :title])
    end

    def find_company
        @company = Company.find(params[:id])
    end

end