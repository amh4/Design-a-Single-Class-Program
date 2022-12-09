require_relative '../lib/todo'

RSpec.describe "todo" do
  it "takes an item and adds it to my_list" do
    todo_list = TODO.new
    item = todo_list.add("Buy eggs")
    expect(todo_list.add(item)).to eq "Buy eggs"
  end
end