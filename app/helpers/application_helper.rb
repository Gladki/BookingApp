module ApplicationHelper

def FindWycieczkaByID(id)
	if id != nil
		Wycieczka.find_by_id(id).nazwa + " " + Wycieczka.find_by_id(id).data.strftime("%d.%m.%Y r.")
	else
		"-"
	end 

end

end
