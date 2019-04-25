require 'test_helper'

class YammerFieldMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yammer_field_mapping = yammer_field_mappings(:one)
  end

  test "should get index" do
    get yammer_field_mappings_url, as: :json
    assert_response :success
  end

  test "should create yammer_field_mapping" do
    assert_difference('YammerFieldMapping.count') do
      post yammer_field_mappings_url, params: { yammer_field_mapping: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show yammer_field_mapping" do
    get yammer_field_mapping_url(@yammer_field_mapping), as: :json
    assert_response :success
  end

  test "should update yammer_field_mapping" do
    patch yammer_field_mapping_url(@yammer_field_mapping), params: { yammer_field_mapping: {  } }, as: :json
    assert_response 200
  end

  test "should destroy yammer_field_mapping" do
    assert_difference('YammerFieldMapping.count', -1) do
      delete yammer_field_mapping_url(@yammer_field_mapping), as: :json
    end

    assert_response 204
  end
end
