require_relative "../lib/playlist"

RSpec.describe "playlist" do
  it "takes a song as a string and adds it to @my_playlist" do
    songs = Playlist.new
    songs.add("Hello")
    expect(songs.print_tracks).to eq ["Hello"]
  end

  it "if a song already exists with the same name, inform the user" do
    songs = Playlist.new
    songs.add("Hello")
    expect(songs.add("Hello")).to eq "That song is already on your playlist"
  end
end
