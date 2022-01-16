class Api::EngineersController < ApplicationController
  before_action :set_engineer, only: [:show, :update, :destroy]

  # GET /engineers
  def index
    @engineers = Engineer.all

    render json: @engineers
  end

  # GET /engineers/1
  def show
    render json: @engineer
  end

  # POST /engineers
  def create
    @engineer = Engineer.new(engineer_params)

    if @engineer.save
      render json: @engineer, status: :created, location: @engineer
    else
      render json: @engineer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /engineers/1
  def update
    if @engineer.update(engineer_params)
      render json: @engineer
    else
      render json: @engineer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /engineers/1
  def destroy
    @engineer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engineer
      @engineer = Engineer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def engineer_params
      params.require(:engineer).permit(:name, :color, :status)
    end
end
