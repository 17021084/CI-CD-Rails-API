class HelloController < ApplicationController
  def index
    render json: "hello", status: :ok
  end
end
