class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def index
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to project_url(@project)
		else
			render :new
		end
	end

	def show
		@project = Project.find(params[:id])
	end
	
	def destroy
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
	end

  private

	def project_params
	params.require(:project).permit(:title, :description, :picture_url, :funding_goal, :end_date)  	
	end
end
