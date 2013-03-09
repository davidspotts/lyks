require 'test_helper'

class LyksControllerTest < ActionController::TestCase
  setup do
    @lyk = lyks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lyks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lyk" do
    assert_difference('Lyk.count') do
      post :create, lyk: { description: @lyk.description }
    end

    assert_redirected_to lyk_path(assigns(:lyk))
  end

  test "should show lyk" do
    get :show, id: @lyk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lyk
    assert_response :success
  end

  test "should update lyk" do
    put :update, id: @lyk, lyk: { description: @lyk.description }
    assert_redirected_to lyk_path(assigns(:lyk))
  end

  test "should destroy lyk" do
    assert_difference('Lyk.count', -1) do
      delete :destroy, id: @lyk
    end

    assert_redirected_to lyks_path
  end
end
