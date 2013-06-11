class Wycieczka < ActiveRecord::Base
  attr_accessible :wycieczka_id,:data, :nazwa

def combined_value
  "#{self.nazwa} #{self.data.strftime("%d-%m-%Y")} r."
end

end
