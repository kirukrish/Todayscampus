class StaticController < ApplicationController
    
  def jobs
    render :layout => false
  end
  
  def job_detail
    render :layout => false
  end
  
  def afterlogin_myaccount
    render :layout => false    
  end
  
  def afterlogin_jobs
    render :layout => false    
  end
  
  def afterlogin_checkout
    render :layout => false    
  end
  
  def afterlogin_advancesearch
    render :layout => false    
  end
  
  def beforelogin_checkout
    render :layout => false    
  end
  
  def featuredemployers_details
    render :layout => false    
  end
  
  def featuredemployers_search
    render :layout => false    
  end
  
  def registeremployer
    render :layout => false    
  end
  
  def resumedetail
    render :layout => false    
  end
  
  def resumesearch
    render :layout => false    
  end
  
  def shoppingcart
    render :layout => false    
  end
  
  def termsconditions
    render :layout => false    
  end
  
  def afterlogin_postjob
    render :layout => false
  end
  
  def webinars
    render :layout => false
  end
  
  def events
    render :layout => false
  end
  
  def jobs_home
    render :layout => false
  end
  
end
