class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
    self.artist.update(artist)
  end
end
