class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@tasks = @project.members
	end

	def new
		@project = Project.new
	end

	def create 
		@project = Project.new(params[:project])
		if @project.save
			entity = Entity.find(params[:project][:entity_id])
			entity.works << @project
			flash[:success] = "Project successfully created!"
	  		redirect_to entity
	  	else
	  		render 'new'
	  	end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(params[:project])
	      flash[:success] = "Project updated"
	      redirect_to @project
	    else
	      render 'edit'
	    end
	end

	def destroy
		Project.find(params[:id]).destroy
	    flash[:success] = "Project removed."
	    redirect_to projects_path
	end
end
