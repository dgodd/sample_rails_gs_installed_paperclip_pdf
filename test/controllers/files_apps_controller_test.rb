require 'test_helper'

class FilesAppsControllerTest < ActionController::TestCase
  setup do
    @files_app = files_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:files_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create files_app" do
    assert_difference('FilesApp.count') do
      post :create, files_app: {  }
    end

    assert_redirected_to files_app_path(assigns(:files_app))
  end

  test "should show files_app" do
    get :show, id: @files_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @files_app
    assert_response :success
  end

  test "should update files_app" do
    patch :update, id: @files_app, files_app: {  }
    assert_redirected_to files_app_path(assigns(:files_app))
  end

  test "should destroy files_app" do
    assert_difference('FilesApp.count', -1) do
      delete :destroy, id: @files_app
    end

    assert_redirected_to files_apps_path
  end
end
