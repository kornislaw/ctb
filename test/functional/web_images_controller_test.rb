require 'test_helper'

class WebImagesControllerTest < ActionController::TestCase
  setup do
    @web_image = web_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_image" do
    assert_difference('WebImage.count') do
      post :create, web_image: @web_image.attributes
    end

    assert_redirected_to web_image_path(assigns(:web_image))
  end

  test "should show web_image" do
    get :show, id: @web_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_image
    assert_response :success
  end

  test "should update web_image" do
    put :update, id: @web_image, web_image: @web_image.attributes
    assert_redirected_to web_image_path(assigns(:web_image))
  end

  test "should destroy web_image" do
    assert_difference('WebImage.count', -1) do
      delete :destroy, id: @web_image
    end

    assert_redirected_to web_images_path
  end
end
