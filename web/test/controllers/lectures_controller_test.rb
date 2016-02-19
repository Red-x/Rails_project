require 'test_helper'

class LecturesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
