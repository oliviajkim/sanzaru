class JobsController < ApplicationController

	def index
		@job = Job.all
	end

	def new
		@job = Job.new

	end

	def create
		@job = Job.create(job_params)
		@job.user_id = current_user.id

		if @job.save
			redirect_to @job
		else
			render :new
		end
	end

	def show
		@job = Job.find(params[:id])
	end

	def edit
		@job = Job.find(params[:id])
		@job.user_id = current_user.id
	end

	def update
		@job = Job.find_by(params[:id])
		@id = @job.id
		@job.user_id = current_user.id
		@job.update_attributes(job_params)
		redirect_to job_path(@id)
	end

	def destroy
		@job = Job.find(params[:id])
		@job.user_id = current_user.id
		@job.destroy!
		redirect_to user_path(@job.user_id)
	end

	private

	def job_params
		job_params = params.require(:job).permit(:job_number, :title, :description)
		
	end

end
