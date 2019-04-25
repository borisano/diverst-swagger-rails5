require 'test_helper'

class NumericFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @numeric_field = numeric_fields(:one)
  end

  test "should get index" do
    get numeric_fields_url, as: :json
    assert_response :success
  end

  test "should create numeric_field" do
    assert_difference('NumericField.count') do
      post numeric_fields_url, params: { numeric_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show numeric_field" do
    get numeric_field_url(@numeric_field), as: :json
    assert_response :success
  end

  test "should update numeric_field" do
    patch numeric_field_url(@numeric_field), params: { numeric_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy numeric_field" do
    assert_difference('NumericField.count', -1) do
      delete numeric_field_url(@numeric_field), as: :json
    end

    assert_response 204
  end
end
