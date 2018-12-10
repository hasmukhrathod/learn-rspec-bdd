class Blog
  
  NO_OF_VIEW_FOR_POPULAR = 100
  
  def initialize(initial_view_count: 0, status: false)
    @view_count = initial_view_count
    @is_published = status
  end
  
  #default view count
  def default_view_count
    @view_count
  end
  
  ##boolean method
  def is_published?
    @is_published
  end
  
  def is_blog_popular?
    @view_count > NO_OF_VIEW_FOR_POPULAR ? true : false
  end
  
end