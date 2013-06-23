class Wycieczka < ActiveRecord::Base
  attr_accessible :wycieczka_id,:data, :nazwa, :updated_by
  validates_presence_of :data, on: :create, message: "Uzupelnij date"
  validates_presence_of :nazwa, on: :create, message: "Wpisz nazwe wycieczki"
def combined_value
  "#{self.nazwa} #{self.data.strftime("%d.%m.%Y")} r."
end

end
