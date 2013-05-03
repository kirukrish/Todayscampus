class Employers::EmployerDetailsController < ApplicationController
	before_filter :authenticate_user!
	
	def edit		
		@user= current_user
		#@user.build_organisation
		#~ puts @user.inspect
		#~ unless @user.organisation
		  #~ org = Organisation.new()			
			#~ org.save(:validate => false)
			#~ @user.update_attributes(:organisation_id =>org.id)
		#~ end
		
		#~ @organisation = @user.organisation
	  #~ #@organisation=Organisation.find(:user_id=>@user.id)
	end
	
	def update
		#update_organisation
			@user= current_user
			if @user.update_attributes(params[:user])
				redirect_to edit_employers_employer_detail_path(@user.id)
			else
				puts @user.errors.inspect
				render :edit
			end
end
	
	def show
	end
	
	#~ def update_organisation
		#~ @organisation=Organisation.find(params[:id])
		#~ @user = current_user
		#~ if @organisation.update_attributes(params[:organisation])
			#~ redirect_to edit_employers_employer_detail_path(@organisation.user_id)
			#~ else
				#~ #render :edit
				#~ puts @organisation.errors.inspect
		#~ end
	#~ end
	
end