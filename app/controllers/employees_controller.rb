class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
	end
end
