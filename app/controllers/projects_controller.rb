class ProjectsController < ApplicationController

	def new
	end

	def index
	end

	def create
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
	params.require(:project).permit(:title, :description, :picture, :financial_goal)  	
	end
end
