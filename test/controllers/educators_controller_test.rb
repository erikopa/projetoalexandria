require 'test_helper'

class EducatorsControllerTest < ActionController::TestCase
  setup do
    @educator = educators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educator" do
    assert_difference('Educator.count') do
      post :create, educator: { age: @educator.age, first_name: @educator.first_name, last_name: @educator.last_name }
    end

    assert_redirected_to educator_path(assigns(:educator))
  end

  test "should show educator" do
    get :show, id: @educator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @educator
    assert_response :success
  end

  test "should update educator" do
    patch :update, id: @educator, educator: { age: @educator.age, first_name: @educator.first_name, last_name: @educator.last_name }
    assert_redirected_to educator_path(assigns(:educator))
  end

  test "should destroy educator" do
    assert_difference('Educator.count', -1) do
      delete :destroy, id: @educator
    end

    assert_redirected_to educators_path
  end
end
