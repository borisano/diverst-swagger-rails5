require 'test_helper'

class TextFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_field = text_fields(:one)
  end

  test "should get index" do
    get text_fields_url, as: :json
    assert_response :success
  end

  test "should create text_field" do
    assert_difference('TextField.count') do
      post text_fields_url, params: { text_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show text_field" do
    get text_field_url(@text_field), as: :json
    assert_response :success
  end

  test "should update text_field" do
    patch text_field_url(@text_field), params: { text_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy text_field" do
    assert_difference('TextField.count', -1) do
      delete text_field_url(@text_field), as: :json
    end

    assert_response 204
  end
end
