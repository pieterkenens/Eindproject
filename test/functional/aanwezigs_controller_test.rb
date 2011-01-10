require 'test_helper'

class AanwezigsControllerTest < ActionController::TestCase
  setup do
    @aanwezig = aanwezigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aanwezigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aanwezig" do
    assert_difference('Aanwezig.count') do
      post :create, :aanwezig => @aanwezig.attributes
    end

    assert_redirected_to aanwezig_path(assigns(:aanwezig))
  end

  test "should show aanwezig" do
    get :show, :id => @aanwezig.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @aanwezig.to_param
    assert_response :success
  end

  test "should update aanwezig" do
    put :update, :id => @aanwezig.to_param, :aanwezig => @aanwezig.attributes
    assert_redirected_to aanwezig_path(assigns(:aanwezig))
  end

  test "should destroy aanwezig" do
    assert_difference('Aanwezig.count', -1) do
      delete :destroy, :id => @aanwezig.to_param
    end

    assert_redirected_to aanwezigs_path
  end
end
