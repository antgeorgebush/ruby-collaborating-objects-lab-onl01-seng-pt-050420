class Artist
  @@all = []
  attr_accessor :name, :song
 
  def initialize(name)
    @name = name
  end

def  self.all
  @@all
end

def add_song(song)
  song.artist = self
end
 
 def song
   song.all.select {|song| song.artist == self}
 end
 
 def self.find_or_create_by_name(name)
   self.find(name) ? self.find(name) :self.new(name)
end 
   
end