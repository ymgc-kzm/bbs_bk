require 'test_helper'

class TestbbsControllerTest < ActionController::TestCase
  setup do
    @testbb = testbbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testbbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testbb" do
    assert_difference('Testbb.count') do
      post :create, testbb: { message: @testbb.message, name: @testbb.name }
    end

    assert_redirected_to testbb_path(assigns(:testbb))
  end

  test "should show testbb" do
    get :show, id: @testbb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testbb
    assert_response :success
  end

  test "should update testbb" do
    put :update, id: @testbb, testbb: { message: @testbb.message, name: @testbb.name }
    assert_redirected_to testbb_path(assigns(:testbb))
  end

  test "should destroy testbb" do
    assert_difference('Testbb.count', -1) do
      delete :destroy, id: @testbb
    end

    assert_redirected_to testbbs_path
  end
end
