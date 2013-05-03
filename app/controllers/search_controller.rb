class SearchController < ApplicationController

  def all_search
    
    if params[:category] && params[:category] == "article" && params[:q].present?
      redirect_to article_search_path( :q => params[:q])
    end
    
  end
end
