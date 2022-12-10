# Playlist Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
class Playlist
  def initialize
    @my_playlist = []
  end

  def add_track(song)
    # check for empty user input
    # checks to see if song already exisits in array
    # if song exisits, let user know
    # else takes song as a string and adds it to the instance variable
  end

  def print_tracks
    # if @my_playlist is empty let user know
    # else returns @my_playlist array
  end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
songs = Playlist.new
songs.add("Hello") # => "Hello"
songs.add("Hello") # => "That song is already on your playlist"
songs.add("ABC") # => "ABC"
songs.add("") # => "You have not entered a song"

songs.print_tracks # => "Hello" , "ABC"

songs2.Playlist.new
songs2.print_tracks # => "Your current playlist is empty"
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->