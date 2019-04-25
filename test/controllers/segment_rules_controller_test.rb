require 'test_helper'

class SegmentRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @segment_rule = segment_rules(:one)
  end

  test "should get index" do
    get segment_rules_url, as: :json
    assert_response :success
  end

  test "should create segment_rule" do
    assert_difference('SegmentRule.count') do
      post segment_rules_url, params: { segment_rule: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show segment_rule" do
    get segment_rule_url(@segment_rule), as: :json
    assert_response :success
  end

  test "should update segment_rule" do
    patch segment_rule_url(@segment_rule), params: { segment_rule: {  } }, as: :json
    assert_response 200
  end

  test "should destroy segment_rule" do
    assert_difference('SegmentRule.count', -1) do
      delete segment_rule_url(@segment_rule), as: :json
    end

    assert_response 204
  end
end
