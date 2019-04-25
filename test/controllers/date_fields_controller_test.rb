require 'test_helper'

class DateFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_field = date_fields(:one)
  end

  test "should get index" do
    get date_fields_url, as: :json
    assert_response :success
  end

  test "should create date_field" do
    assert_difference('DateField.count') do
      post date_fields_url, params: { date_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show date_field" do
    get date_field_url(@date_field), as: :json
    assert_response :success
  end

  test "should update date_field" do
    patch date_field_url(@date_field), params: { date_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy date_field" do
    assert_difference('DateField.count', -1) do
      delete date_field_url(@date_field), as: :json
    end

    assert_response 204
  end
end
