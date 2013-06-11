module ApplicationHelper

def FindWycieczkaByID(id)

	Wycieczka.find_by_id(id).data.strftime("%d.%m.%Y r.") + " " + Wycieczka.find_by_id(id).nazwa 
	
end

end
