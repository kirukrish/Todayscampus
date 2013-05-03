class Event < ActiveRecord::Base
  attr_accessible :title, :external_url, :description, :event_from, :event_to, :event_fee, :fee_for_per_workshop, :online_event, :event_address
  
  
  validates_presence_of :title, :presence => { :message => "Title can't be blank" }
  
  validates_presence_of :external_url, :presence => { :message => "External url can't be blank" }
  validates_presence_of :description, :presence => { :message => "Description can't be blank" }
  validates_presence_of :event_from, :presence => { :message => "Event from can't be blank" }
  validates_presence_of :event_to, :presence => { :message => "Event to can't be blank" }
  validates_presence_of :event_fee, :presence => { :message => "Event fee can't be blank" }

  validates_presence_of :online_event,  :presence => { :message => "Please choose Online event or Event address can't be blank" }, :if => Proc.new { |a| a.online_event.blank? &&  a.event_address.blank? }
  validates_presence_of :event_address, :presence => { :message => "Please choose Online event or Event address can't be blank" }, :if => Proc.new { |a| a.online_event.blank? &&  a.event_address.blank? }
  
  scope :between,  lambda{ |to_date, from_date | where("event_from <= ? AND event_to >= ?", to_date, from_date) }

end