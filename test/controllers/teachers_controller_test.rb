require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get my_students" do
    get :my_students
    assert_response :success
  end

end
