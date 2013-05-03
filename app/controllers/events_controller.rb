class EventsController < ApplicationController
  
  def index
    @events = []
    
    unless params[:to_date].present? && params[:from_date].present? 
    @events = Event.page(params[:page]).per(5)
    else
    @events = Event.between(params[:to_date].to_date, params[:from_date].to_date).page(params[:page]).per(5) 
    end
  end
  
end