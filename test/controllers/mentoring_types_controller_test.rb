require 'test_helper'

class MentoringTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentoring_type = mentoring_types(:one)
  end

  test "should get index" do
    get mentoring_types_url, as: :json
    assert_response :success
  end

  test "should create mentoring_type" do
    assert_difference('MentoringType.count') do
      post mentoring_types_url, params: { mentoring_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mentoring_type" do
    get mentoring_type_url(@mentoring_type), as: :json
    assert_response :success
  end

  test "should update mentoring_type" do
    patch mentoring_type_url(@mentoring_type), params: { mentoring_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mentoring_type" do
    assert_difference('MentoringType.count', -1) do
      delete mentoring_type_url(@mentoring_type), as: :json
    end

    assert_response 204
  end
end
