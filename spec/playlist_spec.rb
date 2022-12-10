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

  it "returns an error if the user has not entered a song" do
    songs = Playlist.new
    expect {songs.add("")}.to raise_error "You have not entered a song"
  end

  it "Informs the user when the playlist is empty if they ask to view it" do
    songs = Playlist.new
    expect(songs.print_tracks).to eq "Your current playlist is empty"
  end
end
