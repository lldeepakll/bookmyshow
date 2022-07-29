require 'test_helper'

class CinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get cinemas_url, as: :json
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post cinemas_url, params: { cinema: { cinema_id: @cinema.cinema_id, name: @cinema.name, no_of_hall: @cinema.no_of_hall } }, as: :json
    end

    assert_response 201
  end

  test "should show cinema" do
    get cinema_url(@cinema), as: :json
    assert_response :success
  end

  test "should update cinema" do
    patch cinema_url(@cinema), params: { cinema: { cinema_id: @cinema.cinema_id, name: @cinema.name, no_of_hall: @cinema.no_of_hall } }, as: :json
    assert_response 200
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete cinema_url(@cinema), as: :json
    end

    assert_response 204
  end
end
