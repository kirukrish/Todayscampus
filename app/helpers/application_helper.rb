module ApplicationHelper

	def disp_us_format(date)
		date.strftime("%e %b %Y %H:%m:%S %p")
	end
	
	def disp_betwen_format(event_from, event_to)
		begin
		if event_from == event_to
			event_from.strftime("%a  %m/%d/%Y")
		else
		"#{event_from.strftime("%a  %m/%d/%Y") } #{event_to.present? ? "thru #{event_to.strftime("%a  %m/%d/%Y")} " : ""}"
		end
		rescue
		""
		end
	end
	
end