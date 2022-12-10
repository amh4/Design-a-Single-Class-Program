class Playlist
  def initialize
    @my_playlist = []
  end


  def add(song)
    fail "You have not entered a song" if song.empty?
    if @my_playlist.include? song
      return "That song is already on your playlist"
    else
      @my_playlist << song
    end
  end

  def print_tracks
    if @my_playlist.empty?
      return "Your current playlist is empty"
    else
      @my_playlist
    end
  end
end