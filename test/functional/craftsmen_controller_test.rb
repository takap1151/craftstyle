# -*- encoding : utf-8 -*-
require 'test_helper'

class CraftsmenControllerTest < ActionController::TestCase
  setup do
    @craftsman = craftsmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craftsmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create craftsman" do
    assert_difference('Craftsman.count') do
      post :create, craftsman: { address: @craftsman.address, birth: @craftsman.birth, mail: @craftsman.mail, name: @craftsman.name, name_en: @craftsman.name_en, product_image: @craftsman.product_image, profile: @craftsman.profile, profile_image: @craftsman.profile_image }
    end

    assert_redirected_to craftsman_path(assigns(:craftsman))
  end

  test "should show craftsman" do
    get :show, id: @craftsman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @craftsman
    assert_response :success
  end

  test "should update craftsman" do
    put :update, id: @craftsman, craftsman: { address: @craftsman.address, birth: @craftsman.birth, mail: @craftsman.mail, name: @craftsman.name, name_en: @craftsman.name_en, product_image: @craftsman.product_image, profile: @craftsman.profile, profile_image: @craftsman.profile_image }
    assert_redirected_to craftsman_path(assigns(:craftsman))
  end

  test "should destroy craftsman" do
    assert_difference('Craftsman.count', -1) do
      delete :destroy, id: @craftsman
    end

    assert_redirected_to craftsmen_path
  end
end
