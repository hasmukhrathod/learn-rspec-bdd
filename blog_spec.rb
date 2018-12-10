require 'rspec'
require_relative 'blog'

RSpec.describe Blog do
  #subject {Blog.new}  ##default, rspec does -> so we can use subject.
  describe '#check_default_view_count' do #method name
    it 'check_default_view_count' do  #what instance method will return?
      expect(subject.default_view_count).to eq(0)
    end
  end  
  
  #is blog published? => boolean method
  describe '#is_pubished?' do
    it 'if status is true, then it is published.' do
      expect(subject.is_published?).to eq(false)
    end
  end
  
  describe '#is_blog_popular?' do
    it 'if view_count is greater than 100' do
      expect(subject.is_blog_popular?).to eq(false)
    end
  end
  
  
end