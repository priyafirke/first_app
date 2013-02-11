require 'test_helper'

class FirstAppinfosControllerTest < ActionController::TestCase
  setup do
    @first_appinfo = first_appinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_appinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_appinfo" do
    assert_difference('FirstAppinfo.count') do
      post :create, first_appinfo: { email: @first_appinfo.email, name: @first_appinfo.name }
    end

    assert_redirected_to first_appinfo_path(assigns(:first_appinfo))
  end

  test "should show first_appinfo" do
    get :show, id: @first_appinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_appinfo
    assert_response :success
  end

  test "should update first_appinfo" do
    put :update, id: @first_appinfo, first_appinfo: { email: @first_appinfo.email, name: @first_appinfo.name }
    assert_redirected_to first_appinfo_path(assigns(:first_appinfo))
  end

  test "should destroy first_appinfo" do
    assert_difference('FirstAppinfo.count', -1) do
      delete :destroy, id: @first_appinfo
    end

    assert_redirected_to first_appinfos_path
  end
end
