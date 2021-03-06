class Blog
  
  NO_OF_VIEW_FOR_POPULAR = 100
  
  #Expecting hash as an argument
  def initialize(initial_view_count: 0, status: false, title: '')
    @view_count = initial_view_count
    @is_published = status
    @title = title  
  end
  
  #default view count
  def default_view_count
    @view_count
  end
  
  ##return title
  def get_title
    @title
  end
  
  ##boolean method
  def is_published?
    @is_published
  end
  
  ##is this blog is popular?
  def is_blog_popular?
    @view_count > NO_OF_VIEW_FOR_POPULAR ? true : false
  end
  
  ##from publish -> unpublish viceversa
  def change_status
    @is_published ? false : true
  end
  
end