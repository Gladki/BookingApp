require 'test_helper'

class PrzystaneksControllerTest < ActionController::TestCase
  setup do
    @przystanek = przystaneks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:przystaneks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create przystanek" do
    assert_difference('Przystanek.count') do
      post :create, przystanek: { nazwa: @przystanek.nazwa }
    end

    assert_redirected_to przystanek_path(assigns(:przystanek))
  end

  test "should show przystanek" do
    get :show, id: @przystanek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @przystanek
    assert_response :success
  end

  test "should update przystanek" do
    put :update, id: @przystanek, przystanek: { nazwa: @przystanek.nazwa }
    assert_redirected_to przystanek_path(assigns(:przystanek))
  end

  test "should destroy przystanek" do
    assert_difference('Przystanek.count', -1) do
      delete :destroy, id: @przystanek
    end

    assert_redirected_to przystaneks_path
  end
end
