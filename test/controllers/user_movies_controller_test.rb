require 'test_helper'

class UserMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_movies_index_url
    assert_response :success
  end

end
