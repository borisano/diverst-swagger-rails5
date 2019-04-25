require 'test_helper'

class BaseClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_class = base_classes(:one)
  end

  test "should get index" do
    get base_classes_url, as: :json
    assert_response :success
  end

  test "should create base_class" do
    assert_difference('BaseClass.count') do
      post base_classes_url, params: { base_class: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show base_class" do
    get base_class_url(@base_class), as: :json
    assert_response :success
  end

  test "should update base_class" do
    patch base_class_url(@base_class), params: { base_class: {  } }, as: :json
    assert_response 200
  end

  test "should destroy base_class" do
    assert_difference('BaseClass.count', -1) do
      delete base_class_url(@base_class), as: :json
    end

    assert_response 204
  end
end
