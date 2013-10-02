require 'test_helper'

class CraftsmenProductsControllerTest < ActionController::TestCase
  setup do
    @craftsmen_product = craftsmen_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craftsmen_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create craftsmen_product" do
    assert_difference('CraftsmenProduct.count') do
      post :create, craftsmen_product: { product_image: @craftsmen_product.product_image, product_name: @craftsmen_product.product_name, product_name_en: @craftsmen_product.product_name_en }
    end

    assert_redirected_to craftsmen_product_path(assigns(:craftsmen_product))
  end

  test "should show craftsmen_product" do
    get :show, id: @craftsmen_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @craftsmen_product
    assert_response :success
  end

  test "should update craftsmen_product" do
    put :update, id: @craftsmen_product, craftsmen_product: { product_image: @craftsmen_product.product_image, product_name: @craftsmen_product.product_name, product_name_en: @craftsmen_product.product_name_en }
    assert_redirected_to craftsmen_product_path(assigns(:craftsmen_product))
  end

  test "should destroy craftsmen_product" do
    assert_difference('CraftsmenProduct.count', -1) do
      delete :destroy, id: @craftsmen_product
    end

    assert_redirected_to craftsmen_products_path
  end
end
