require 'test_helper'

class SegmentsFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segments_field = segments_fields(:one)
  end

  test "should get index" do
    get segments_fields_url, as: :json
    assert_response :success
  end

  test "should create segments_field" do
    assert_difference('SegmentsField.count') do
      post segments_fields_url, params: { segments_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show segments_field" do
    get segments_field_url(@segments_field), as: :json
    assert_response :success
  end

  test "should update segments_field" do
    patch segments_field_url(@segments_field), params: { segments_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy segments_field" do
    assert_difference('SegmentsField.count', -1) do
      delete segments_field_url(@segments_field), as: :json
    end

    assert_response 204
  end
end
