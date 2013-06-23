class Przystanek < ActiveRecord::Base
  attr_accessible :przystanek_id,:nazwa,:updated_by
  has_and_belongs_to_many :rezerwacja
  validates_presence_of :nazwa, on: :create, message: "Musisz wpisac nazwe przystanku"
  def combined_value
  "#{self.nazwa}"
  end


end
