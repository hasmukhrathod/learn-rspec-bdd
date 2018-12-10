require 'rspec'
require_relative 'blog'

RSpec.describe Blog do
  #subject {Blog.new}  ##default, rspec does -> so we can use subject.
  it '#check_default_view_count' do  #what instance method will return?
    expect(subject.default_view_count).to eq(0)
  end
  
end