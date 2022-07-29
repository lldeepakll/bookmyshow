require 'test_helper'

class CinemaSeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema_seat = cinema_seats(:one)
  end

  test "should get index" do
    get cinema_seats_url, as: :json
    assert_response :success
  end

  test "should create cinema_seat" do
    assert_difference('CinemaSeat.count') do
      post cinema_seats_url, params: { cinema_seat: { cinema_hall_id: @cinema_seat.cinema_hall_id, seat_no: @cinema_seat.seat_no, type: @cinema_seat.type } }, as: :json
    end

    assert_response 201
  end

  test "should show cinema_seat" do
    get cinema_seat_url(@cinema_seat), as: :json
    assert_response :success
  end

  test "should update cinema_seat" do
    patch cinema_seat_url(@cinema_seat), params: { cinema_seat: { cinema_hall_id: @cinema_seat.cinema_hall_id, seat_no: @cinema_seat.seat_no, type: @cinema_seat.type } }, as: :json
    assert_response 200
  end

  test "should destroy cinema_seat" do
    assert_difference('CinemaSeat.count', -1) do
      delete cinema_seat_url(@cinema_seat), as: :json
    end

    assert_response 204
  end
end
