require 'test_helper'

class PostsIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
    @post = posts(:one)
  end

  test "should get index" do
    get  '/index'
    assert_template 'posts/index'
  end

  test "number of posts" do
    get  '/index'
    assert_select "p", Post.all.count
  end

end
