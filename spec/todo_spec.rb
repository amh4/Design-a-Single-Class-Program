require_relative '../lib/todo'

RSpec.describe "todo" do
  it "takes an item and adds it to my_list" do
    todo_list = TODO.new
    item = todo_list.add("Buy eggs")
    expect(todo_list.add(item)).to eq "#{item} added"
  end

  it "returns error if add method is empty" do
    todo_list = TODO.new
    expect {todo_list.add("")}.to raise_error "No item given."
  end

  it "prints out todo list" do
    todo_list = TODO.new
    todo_list.add("Buy eggs")
    todo_list.add("Walk the dog")
    expect(todo_list.print_todo).to eq ["Buy eggs", "Walk the dog"]
  end

  it "allows you to mark off a task that has been completed" do
    todo_list = TODO.new
    todo_list.add("Buy eggs")
    todo_list.add("Walk the dog")
    expect(todo_list.task_complete("Buy eggs")).to eq "Buy eggs completed"
  end

  it "raises an error if no item is given to remove" do
    todo_list = TODO.new
    expect {todo_list.task_complete("")}.to raise_error "No item given."
  end

  it "raises an error if no item is given to remove" do
    todo_list = TODO.new
    expect {todo_list.task_complete("Milk cows")}.to raise_error "No such item."
  end

  it "raises an error if todo list is empty" do
    todo_list = TODO.new
    expect {todo_list.print_todo}.to raise_error "You're all done!"
  end
end