class Rezerwacja < ActiveRecord::Base
  has_and_belongs_to_many :przystaneks
  attr_accessible :nrtelefonu,:rezerwacja_id,:dataUrodzenia, :datawycieczki, :email, :imie, :nazwa, :nazwisko, :przystanek_ids, :uwagi, :zaplacona, :updated_by


  validates_presence_of :nrtelefonu, on: :create, message: "Nie moze byc puste"
  validates_presence_of :przystanek_ids, on: :create, message: "Musisz podac przystanek"
  validates_presence_of :dataUrodzenia, on: :create, message: "Nie moze by puste"
  validates_presence_of :nazwa, on: :create, message: "Musisz wybrac wycieczke"
  validates_presence_of :imie, on: :create, message: "Musisz podac imie"
  validates_presence_of :nazwisko, on: :create, message: "Musisz podac nazwisko"
end
# 1991050620
# 1991050621