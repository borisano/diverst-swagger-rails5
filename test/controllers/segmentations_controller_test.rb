require 'test_helper'

class SegmentationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segmentation = segmentations(:one)
  end

  test "should get index" do
    get segmentations_url, as: :json
    assert_response :success
  end

  test "should create segmentation" do
    assert_difference('Segmentation.count') do
      post segmentations_url, params: { segmentation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show segmentation" do
    get segmentation_url(@segmentation), as: :json
    assert_response :success
  end

  test "should update segmentation" do
    patch segmentation_url(@segmentation), params: { segmentation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy segmentation" do
    assert_difference('Segmentation.count', -1) do
      delete segmentation_url(@segmentation), as: :json
    end

    assert_response 204
  end
end
