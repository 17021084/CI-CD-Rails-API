class HelloController < ApplicationController
  def index
    render json: "hello", status: :ok
  end

  def show
    render json: "hello #{params[:id]}", status: :ok
  end
end
