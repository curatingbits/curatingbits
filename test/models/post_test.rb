require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


test "Should not save post without title" do
  post = Post.new
  assert_not post.save, "saved without post title"
end


test "Should not save post without category" do
  @post = Post.new
  assert_not @post.category
end

end
