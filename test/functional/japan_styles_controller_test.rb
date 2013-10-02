require 'test_helper'

class JapanStylesControllerTest < ActionController::TestCase
  setup do
    @japan_style = japan_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:japan_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create japan_style" do
    assert_difference('JapanStyle.count') do
      post :create, japan_style: { article_image: @japan_style.article_image, article_text: @japan_style.article_text, article_title: @japan_style.article_title }
    end

    assert_redirected_to japan_style_path(assigns(:japan_style))
  end

  test "should show japan_style" do
    get :show, id: @japan_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @japan_style
    assert_response :success
  end

  test "should update japan_style" do
    put :update, id: @japan_style, japan_style: { article_image: @japan_style.article_image, article_text: @japan_style.article_text, article_title: @japan_style.article_title }
    assert_redirected_to japan_style_path(assigns(:japan_style))
  end

  test "should destroy japan_style" do
    assert_difference('JapanStyle.count', -1) do
      delete :destroy, id: @japan_style
    end

    assert_redirected_to japan_styles_path
  end
end
