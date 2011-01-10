require 'test_helper'

class DocentsControllerTest < ActionController::TestCase
  setup do
    @docent = docents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docent" do
    assert_difference('Docent.count') do
      post :create, :docent => @docent.attributes
    end

    assert_redirected_to docent_path(assigns(:docent))
  end

  test "should show docent" do
    get :show, :id => @docent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @docent.to_param
    assert_response :success
  end

  test "should update docent" do
    put :update, :id => @docent.to_param, :docent => @docent.attributes
    assert_redirected_to docent_path(assigns(:docent))
  end

  test "should destroy docent" do
    assert_difference('Docent.count', -1) do
      delete :destroy, :id => @docent.to_param
    end

    assert_redirected_to docents_path
  end
end
