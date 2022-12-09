class TODO
  def initialize
    @my_list = []
  end

  def add(item)
    fail "No item given." if item.empty?
    @my_list << item
    return "#{item} added"
  end

  def print_todo
    return @my_list
  end

  def task_complete(completed)
    fail "No item given." if completed.empty?
    @my_list.delete(completed)
  end
end