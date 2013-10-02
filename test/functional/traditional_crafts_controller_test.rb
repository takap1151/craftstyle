require 'test_helper'

class TraditionalCraftsControllerTest < ActionController::TestCase
  setup do
    @traditional_craft = traditional_crafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traditional_crafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traditional_craft" do
    assert_difference('TraditionalCraft.count') do
      post :create, traditional_craft: { area: @traditional_craft.area, area_en: @traditional_craft.area_en, categories: @traditional_craft.categories, categories_en: @traditional_craft.categories_en, crafts: @traditional_craft.crafts, crafts_en: @traditional_craft.crafts_en, craftsman_products_id: @traditional_craft.craftsman_products_id, prefecture: @traditional_craft.prefecture, prefecture_en: @traditional_craft.prefecture_en }
    end

    assert_redirected_to traditional_craft_path(assigns(:traditional_craft))
  end

  test "should show traditional_craft" do
    get :show, id: @traditional_craft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traditional_craft
    assert_response :success
  end

  test "should update traditional_craft" do
    put :update, id: @traditional_craft, traditional_craft: { area: @traditional_craft.area, area_en: @traditional_craft.area_en, categories: @traditional_craft.categories, categories_en: @traditional_craft.categories_en, crafts: @traditional_craft.crafts, crafts_en: @traditional_craft.crafts_en, craftsman_products_id: @traditional_craft.craftsman_products_id, prefecture: @traditional_craft.prefecture, prefecture_en: @traditional_craft.prefecture_en }
    assert_redirected_to traditional_craft_path(assigns(:traditional_craft))
  end

  test "should destroy traditional_craft" do
    assert_difference('TraditionalCraft.count', -1) do
      delete :destroy, id: @traditional_craft
    end

    assert_redirected_to traditional_crafts_path
  end
end
