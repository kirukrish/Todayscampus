class Employers::PostJobsController < ApplicationController
	
	def index
		@jobs=Job.where(:user_id=>current_user.id)
	end
	 
	 def show
		 @job=Job.find(params[:id])
	 end
	 
	def new
	 @job=Job.new
	 @job.build_job_location
	end
 
	def create 
		@job=Job.new(params[:job])
		if @job.save
			redirect_to new_employers_post_job_path and return if params[:commit] == "Submit"
			redirect_to employers_post_jobs_path
		else
			render :new
		end
	end
	 
	def edit
		@job=Job.find(params[:id])
	end

	def update
		@job=Job.find(params[:id])
		if @job.update_attributes(params[:job])
			redirect_to employers_post_jobs_path
			else
			render :edit	
		end
	end
	
	def destroy
		@job=Job.find(params[:id])
		@job.destroy
		redirect_to employers_post_jobs_path
	end
	
	def job_location_state_select
		country=params[:job][:job_location_attributes][:job_country_id]
		@states=State.where(:country_id=>country)
	end
	
	def job_state_select
		country=params[:job][:country_id]
		@states=State.where(:country_id=>country)
	end
	
	def job_category_select
		@job_categories=JobCategory.where(:job_type_id=>params[:job][:job_type_id])
	end
	
	
end
