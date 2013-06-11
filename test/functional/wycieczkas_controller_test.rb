require 'test_helper'

class WycieczkasControllerTest < ActionController::TestCase
  setup do
    @wycieczka = wycieczkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wycieczkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wycieczka" do
    assert_difference('Wycieczka.count') do
      post :create, wycieczka: { nazwa: @wycieczka.nazwa }
    end

    assert_redirected_to wycieczka_path(assigns(:wycieczka))
  end

  test "should show wycieczka" do
    get :show, id: @wycieczka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wycieczka
    assert_response :success
  end

  test "should update wycieczka" do
    put :update, id: @wycieczka, wycieczka: { nazwa: @wycieczka.nazwa }
    assert_redirected_to wycieczka_path(assigns(:wycieczka))
  end

  test "should destroy wycieczka" do
    assert_difference('Wycieczka.count', -1) do
      delete :destroy, id: @wycieczka
    end

    assert_redirected_to wycieczkas_path
  end
end
