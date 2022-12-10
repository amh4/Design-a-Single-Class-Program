class Playlist
  def initialize
    @my_playlist = []
  end


  def add(song)
    if @my_playlist.include? song
      return "That song is already on your playlist"
    else
      @my_playlist << song
    end
  end

  def print_tracks
    @my_playlist
  end
end