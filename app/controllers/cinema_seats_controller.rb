class CinemaSeatsController < ApplicationController
  before_action :set_cinema_seat, only: [:show, :update, :destroy]

  # GET /cinema_seats
  def index
    @cinema_seats = CinemaSeat.all

    render json: @cinema_seats
  end

  # GET /cinema_seats/1
  def show
    render json: @cinema_seat
  end

  # POST /cinema_seats
  def create
    @cinema_seat = CinemaSeat.new(cinema_seat_params)

    if @cinema_seat.save
      render json: @cinema_seat, status: :created, location: @cinema_seat
    else
      render json: @cinema_seat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cinema_seats/1
  def update
    if @cinema_seat.update(cinema_seat_params)
      render json: @cinema_seat
    else
      render json: @cinema_seat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cinema_seats/1
  def destroy
    @cinema_seat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_seat
      @cinema_seat = CinemaSeat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cinema_seat_params
      params.require(:cinema_seat).permit(:seat_no, :seat_type, :cinema_hall_id)
    end
end
