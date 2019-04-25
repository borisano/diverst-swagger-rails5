require 'test_helper'

class FolderSharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folder_share = folder_shares(:one)
  end

  test "should get index" do
    get folder_shares_url, as: :json
    assert_response :success
  end

  test "should create folder_share" do
    assert_difference('FolderShare.count') do
      post folder_shares_url, params: { folder_share: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show folder_share" do
    get folder_share_url(@folder_share), as: :json
    assert_response :success
  end

  test "should update folder_share" do
    patch folder_share_url(@folder_share), params: { folder_share: {  } }, as: :json
    assert_response 200
  end

  test "should destroy folder_share" do
    assert_difference('FolderShare.count', -1) do
      delete folder_share_url(@folder_share), as: :json
    end

    assert_response 204
  end
end
