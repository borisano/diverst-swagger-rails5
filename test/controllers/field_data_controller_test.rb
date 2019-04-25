require 'test_helper'

class FieldDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_datum = field_data(:one)
  end

  test "should get index" do
    get field_data_url, as: :json
    assert_response :success
  end

  test "should create field_datum" do
    assert_difference('FieldDatum.count') do
      post field_data_url, params: { field_datum: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show field_datum" do
    get field_datum_url(@field_datum), as: :json
    assert_response :success
  end

  test "should update field_datum" do
    patch field_datum_url(@field_datum), params: { field_datum: {  } }, as: :json
    assert_response 200
  end

  test "should destroy field_datum" do
    assert_difference('FieldDatum.count', -1) do
      delete field_datum_url(@field_datum), as: :json
    end

    assert_response 204
  end
end
