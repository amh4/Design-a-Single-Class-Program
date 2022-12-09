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
    fail "You're all done!" if @my_list.empty?
    return @my_list
  end

  def task_complete(completed)
    fail "No item given." if completed.empty?
    if @my_list.include?(completed)
      @my_list.delete(completed)
      return "#{completed} completed"
    else
      fail "No such item."
    end
  end
end