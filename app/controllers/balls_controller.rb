class BallsController < ApplicationController
  before_action :set_ball, only: [:show, :update, :destroy]

  # GET /balls
  def index
    @balls = Ball.all

    render json: @balls
  end

  # GET /balls/1
  def show
    render json: @ball
  end

  # POST /balls
  def create
    @ball = Ball.new(ball_params)

    if @ball.save
      render json: @ball, status: :created, location: @ball
    else
      render json: @ball.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /balls/1
  def update
    if @ball.update(ball_params)
      render json: @ball
    else
      render json: @ball.errors, status: :unprocessable_entity
    end
  end

  # DELETE /balls/1
  def destroy
    @ball.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ball
      @ball = Ball.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ball_params
      params.permit(:size, :name)
    end
end
