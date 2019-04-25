require 'test_helper'

class CustomTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_text = custom_texts(:one)
  end

  test "should get index" do
    get custom_texts_url, as: :json
    assert_response :success
  end

  test "should create custom_text" do
    assert_difference('CustomText.count') do
      post custom_texts_url, params: { custom_text: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show custom_text" do
    get custom_text_url(@custom_text), as: :json
    assert_response :success
  end

  test "should update custom_text" do
    patch custom_text_url(@custom_text), params: { custom_text: {  } }, as: :json
    assert_response 200
  end

  test "should destroy custom_text" do
    assert_difference('CustomText.count', -1) do
      delete custom_text_url(@custom_text), as: :json
    end

    assert_response 204
  end
end
