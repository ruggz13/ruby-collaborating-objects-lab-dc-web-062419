require "pry"
class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def self.all
		@@all
	end

	def add_song(song)
		# binding.pry
		@songs << song
	end

	def self.find_or_create_by_name(name)
		#if song does not have an artist already, create one
		#else make sure that artist is unique in the sense that one is not created twice

		if self.all.find {|artist| artist.name == name}
			self.all.find {|artist| artist.name == name}
		else
			self.new(name).tap {|artist| artist.save}

		end
		# binding.pry
	end

	def save
		@@all << self
	end

	def print_songs
		songs.each {|song| puts song.name}
	end


end