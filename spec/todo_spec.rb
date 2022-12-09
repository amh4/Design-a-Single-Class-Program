require_relative '../lib/todo'

RSpec.describe "todo" do
  it "takes an item and adds it to my_list" do
    todo_list = TODO.new
    item = todo_list.add("Buy eggs")
    expect(todo_list.add(item)).to eq "Buy eggs"
  end

  it "returns error if add method is empty" do
    todo_list = TODO.new
    expect {todo_list.add("")}.to raise_error "No item given."
  end
end