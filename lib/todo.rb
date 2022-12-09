class TODO
  def initialize
    @my_list = []
  end

  def add(item)
    fail "No item given." if item.empty?
    return item
  end
end