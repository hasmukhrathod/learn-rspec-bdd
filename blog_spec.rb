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
    ##Rightnow, there are 2 context of is_published? method
    ##1. publish, 2. not publish
    
    context 'state is published' do
      it 'if status is true, then it is published.' do
        blog = described_class.new(status: true)
        expect(blog).to be_is_published
      end
    end
    context 'state is not published' do
      it 'if status is false, then it is not published.' do
        expect(subject).to_not be_is_published
      end
    end
  end
  

  describe '#is_blog_popular?' do
    ##we use context when there are paths in method
    ##Here two paths: 1 blog is popular, 2 blog is not popular
    context 'blog is popular' do
      it 'if view_count is greater than 100' do
        blog = described_class.new(initial_view_count: 105)
        expect(blog).to be_is_blog_popular
      end
    end
    
    context 'blog is not popular' do
      it 'if view_count is greater than 100' do
        expect(subject).to_not be_is_blog_popular
      end
    end
  end
  
  
end