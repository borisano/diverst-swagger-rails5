require 'test_helper'

class CsvFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_file = csv_files(:one)
  end

  test "should get index" do
    get csv_files_url, as: :json
    assert_response :success
  end

  test "should create csv_file" do
    assert_difference('CsvFile.count') do
      post csv_files_url, params: { csv_file: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show csv_file" do
    get csv_file_url(@csv_file), as: :json
    assert_response :success
  end

  test "should update csv_file" do
    patch csv_file_url(@csv_file), params: { csv_file: {  } }, as: :json
    assert_response 200
  end

  test "should destroy csv_file" do
    assert_difference('CsvFile.count', -1) do
      delete csv_file_url(@csv_file), as: :json
    end

    assert_response 204
  end
end
