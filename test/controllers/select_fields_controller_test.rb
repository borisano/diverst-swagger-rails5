require 'test_helper'

class SelectFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @select_field = select_fields(:one)
  end

  test "should get index" do
    get select_fields_url, as: :json
    assert_response :success
  end

  test "should create select_field" do
    assert_difference('SelectField.count') do
      post select_fields_url, params: { select_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show select_field" do
    get select_field_url(@select_field), as: :json
    assert_response :success
  end

  test "should update select_field" do
    patch select_field_url(@select_field), params: { select_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy select_field" do
    assert_difference('SelectField.count', -1) do
      delete select_field_url(@select_field), as: :json
    end

    assert_response 204
  end
end
