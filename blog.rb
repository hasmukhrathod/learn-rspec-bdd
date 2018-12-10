class Blog
  
  def initialize(initial_view_count: 0)
    @view_count = initial_view_count
  end
  
  def default_view_count
    @view_count
  end
  
end