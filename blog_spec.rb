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
    
    context 'when state is not published' do
      it 'if status is false, then it is not published.' do
        expect(subject).to_not be_is_published
      end
    end
    
    context 'when state is published' do
      subject = described_class.new(status: true, title: 'ジーンズ')
      it 'if status is true, then it is published.' do
        expect(subject).to be_is_published
      end
    end
  end
  
  describe '#change_status' do
    # before do
    #   @title = 'ライトオン'
    # end
    
    let(:params) {{status: status, title: 'ライトオン'}}
    
    # let(:params) { { name: 'たろう' } } と同じ意味のコード
    # let(:params) do
    #   hash = {}
    #   hash[:name] = 'たろう'
    #   hash
    # end
    let(:status) {true}
    let(:blog) {described_class.new(params)}
    subject {blog.change_status}
    
    context 'when from unpublish to publish' do
      it {is_expected.to eq(false)}
      # it 'change the status to publish' do
      #   expect(subject.change_status).to eq(true)
      # end  
    end
    
    context 'when from publish to unpublish' do
      let(:status) {false}
      let(:blog) {described_class.new(params)}
      subject {blog.change_status}
      
      it {is_expected.to eq(true)}
      
      it 'change status to unpublish' do
        expect(blog.get_title).to eq(params[:title])
      end
    end
  end

  describe '#is_blog_popular?' do
    ##we use context when there are paths in method
    ##Here two paths: 1 blog is popular, 2 blog is not popular
    
    let(:blog_params) {{initial_view_count: blog_view_count}} #HASH
    
    context 'when blog is popular' do
      #default subject is override
      let(:blog_view_count) {101}
      subject { described_class.new(blog_params) }
      it 'if view_count is greater than 100' do
        expect(subject).to be_is_blog_popular
      end
    end
    
    context 'when blog is not popular' do
      let(:blog_view_count) {99}
      subject { described_class.new(blog_params) }
      it 'if view_count is less than 100' do
        expect(subject).to_not be_is_blog_popular
      end
    end
  end
end