require 'test_helper'

class PillarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pillar = pillars(:one)
  end

  test "should get index" do
    get pillars_url, as: :json
    assert_response :success
  end

  test "should create pillar" do
    assert_difference('Pillar.count') do
      post pillars_url, params: { pillar: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show pillar" do
    get pillar_url(@pillar), as: :json
    assert_response :success
  end

  test "should update pillar" do
    patch pillar_url(@pillar), params: { pillar: {  } }, as: :json
    assert_response 200
  end

  test "should destroy pillar" do
    assert_difference('Pillar.count', -1) do
      delete pillar_url(@pillar), as: :json
    end

    assert_response 204
  end
end
