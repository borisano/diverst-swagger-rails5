require 'test_helper'

class CheckboxFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @checkbox_field = checkbox_fields(:one)
  end

  test "should get index" do
    get checkbox_fields_url, as: :json
    assert_response :success
  end

  test "should create checkbox_field" do
    assert_difference('CheckboxField.count') do
      post checkbox_fields_url, params: { checkbox_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show checkbox_field" do
    get checkbox_field_url(@checkbox_field), as: :json
    assert_response :success
  end

  test "should update checkbox_field" do
    patch checkbox_field_url(@checkbox_field), params: { checkbox_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy checkbox_field" do
    assert_difference('CheckboxField.count', -1) do
      delete checkbox_field_url(@checkbox_field), as: :json
    end

    assert_response 204
  end
end
