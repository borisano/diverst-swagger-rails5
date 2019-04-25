require 'test_helper'

class FrequencyPeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frequency_period = frequency_periods(:one)
  end

  test "should get index" do
    get frequency_periods_url, as: :json
    assert_response :success
  end

  test "should create frequency_period" do
    assert_difference('FrequencyPeriod.count') do
      post frequency_periods_url, params: { frequency_period: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show frequency_period" do
    get frequency_period_url(@frequency_period), as: :json
    assert_response :success
  end

  test "should update frequency_period" do
    patch frequency_period_url(@frequency_period), params: { frequency_period: {  } }, as: :json
    assert_response 200
  end

  test "should destroy frequency_period" do
    assert_difference('FrequencyPeriod.count', -1) do
      delete frequency_period_url(@frequency_period), as: :json
    end

    assert_response 204
  end
end
