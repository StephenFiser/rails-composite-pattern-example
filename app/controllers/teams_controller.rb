class TeamsController < ApplicationController
	def index
		@teams = Team.all
	end


	def show
		@team = Team.find(params[:id])
		@projects = @team.projects
		@team_members = @team.members
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(params[:team])
		if @team.save
			flash[:success] = "Team successfully created!"
	  		redirect_to @team
	  	else
	  		render 'new'
	  	end
	end

	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])
		if @team.update_attributes(params[:team])
	      flash[:success] = "Team updated"
	      redirect_to @team
	    else
	      render 'edit'
	    end
	end

	def destroy
		Team.find(params[:id]).destroy
	    flash[:success] = "Team removed."
	    redirect_to teams_path
	end
end
