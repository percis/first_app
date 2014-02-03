require 'test_helper'

class AmendmentsControllerTest < ActionController::TestCase
  setup do
    @amendment = amendments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amendments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amendment" do
    assert_difference('Amendment.count') do
      post :create, amendment: { c_code: @amendment.c_code, c_name: @amendment.c_name, priority: @amendment.priority, tran_id: @amendment.tran_id }
    end

    assert_redirected_to amendment_path(assigns(:amendment))
  end

  test "should show amendment" do
    get :show, id: @amendment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amendment
    assert_response :success
  end

  test "should update amendment" do
    put :update, id: @amendment, amendment: { c_code: @amendment.c_code, c_name: @amendment.c_name, priority: @amendment.priority, tran_id: @amendment.tran_id }
    assert_redirected_to amendment_path(assigns(:amendment))
  end

  test "should destroy amendment" do
    assert_difference('Amendment.count', -1) do
      delete :destroy, id: @amendment
    end

    assert_redirected_to amendments_path
  end
end
