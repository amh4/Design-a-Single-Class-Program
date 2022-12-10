class Playlist
  def initialize
    @my_playlist = []
  end


  def add(song)
    fail "You have not entered a song" if song.empty?
    @my_playlist.include?(song) ? "That song is already on your playlist" : @my_playlist << song
  end

  def print_tracks
    @my_playlist.empty? ? "Your current playlist is empty" : @my_playlist
  end
end