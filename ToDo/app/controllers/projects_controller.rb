class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
		@passed_team = params[:team_id]
	end

	def create
		@project = Project.new(params[:project])

		if @project.save
			redirect_to project_url(@project)
		else
			render :new
		end
	end

	def show
		@project = Project.find(params[:id])
	end
end
