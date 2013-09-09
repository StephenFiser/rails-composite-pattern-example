class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def create 
		@employee = Employee.new(params[:employee])
		if @employee.save
			entity = Entity.find(params[:employee][:entity_id])
			entity << @employee
			flash[:success] = "Employee successfully created!"
			respond_to do |format|
				format.html { redirect_to entity }
				format.js
			end
			#render 'create'
	  	else
	  		render 'new'
	  	end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update_attributes(params[:employee])
	      flash[:success] = "Employee updated"
	      redirect_to @employee
	    else
	      render 'edit'
	    end
	end

	def destroy
		Employee.find(params[:id]).destroy
	    flash[:success] = "Employee removed."
	    redirect_to employees_path
	end
end
