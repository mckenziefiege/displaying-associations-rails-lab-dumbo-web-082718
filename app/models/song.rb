class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def hyphened_link
    "#{self.artist_name} - #{self.title}"
  end 
end
