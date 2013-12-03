class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def index
		@projects= Project.all
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
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_url
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to project_url(@project)
		else
			render :edit
		end
	end

  private

	def project_params
	params.require(:project).permit(:title, :description, :picture_url, :funding_goal, :end_date)  	
	end
end
