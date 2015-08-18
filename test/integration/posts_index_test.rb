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

end
