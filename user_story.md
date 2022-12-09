# TODO Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TODO
  def initialize
    @my_list = []
  end

  def add(item)
    # takes a string and adds it to the my_list var
    # throws an exception if string is empty
  end

  def print_todo
    # returns my_list
  end

  def task_complete(string)
    # takes task to remove from list as string
    # says what has been removed
    # removes it from list
    # throws an exception if string is empty
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
todo_list = TODO.new
todo_list.add("Buy eggs")
todo_list.add("Walk dog")
todo_list.add("") => "Please specify an item"
todo_list.print_todo => "Buy eggs, walk the dog"

todo_list.task_complete("Buy eggs") => "Buy eggs has been removed"
todo_list.task_complete("") => "No matching task"

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
