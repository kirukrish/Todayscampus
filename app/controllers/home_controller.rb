class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :dash

  def index
    @articles1, @articles2, @articles3 = Article.get_lists_articles
  end
  
  #user redirect the appropriate dashboard
  def dash
    if current_user && current_user.user_role == "jobseeker"
      redirect_to jobseekers_dashboard_index_path
    elsif current_user && current_user.user_role == "employer"
      redirect_to employers_dashboard_index_path
    elsif current_user && current_user.is_admin?
      redirect_to "/admin"
    end
    
  end
  
  def paid_page

  end
  
end