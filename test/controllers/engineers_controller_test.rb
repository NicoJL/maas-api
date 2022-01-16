require "test_helper"

class EngineersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @engineer = engineers(:one)
  end

  test "should get index" do
    get engineers_url, as: :json
    assert_response :success
  end

  test "should create engineer" do
    assert_difference('Engineer.count') do
      post engineers_url, params: { engineer: { color: @engineer.color, name: @engineer.name, status: @engineer.status } }, as: :json
    end

    assert_response 201
  end

  test "should show engineer" do
    get engineer_url(@engineer), as: :json
    assert_response :success
  end

  test "should update engineer" do
    patch engineer_url(@engineer), params: { engineer: { color: @engineer.color, name: @engineer.name, status: @engineer.status } }, as: :json
    assert_response 200
  end

  test "should destroy engineer" do
    assert_difference('Engineer.count', -1) do
      delete engineer_url(@engineer), as: :json
    end

    assert_response 204
  end
end
