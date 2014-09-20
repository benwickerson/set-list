require 'test_helper'

class RehersalsControllerTest < ActionController::TestCase
  setup do
    @rehersal = rehersals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rehersals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rehersal" do
    assert_difference('Rehersal.count') do
      post :create, rehersal: { rehersal: @rehersal.rehersal }
    end

    assert_redirected_to rehersal_path(assigns(:rehersal))
  end

  test "should show rehersal" do
    get :show, id: @rehersal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rehersal
    assert_response :success
  end

  test "should update rehersal" do
    patch :update, id: @rehersal, rehersal: { rehersal: @rehersal.rehersal }
    assert_redirected_to rehersal_path(assigns(:rehersal))
  end

  test "should destroy rehersal" do
    assert_difference('Rehersal.count', -1) do
      delete :destroy, id: @rehersal
    end

    assert_redirected_to rehersals_path
  end
end
