class Rezerwacja < ActiveRecord::Base
  attr_accessible :nrtelefonu,:rezerwacja_id,:dataUrodzenia, :datawycieczki, :email, :imie, :nazwa, :nazwisko
end
