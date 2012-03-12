require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test 'title is obligatory' do
    post = Post.new
    post.content = posts('initial-post').content
    post.post_date = posts('initial-post').post_date
    assert post.invalid?

    post.title = posts('initial-post').title
    assert post.valid?
  end

end
