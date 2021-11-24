class MuttersController < ApplicationController
  before_action :set_mutter, only: [:show, :update, :destroy]

  # GET /mutters
  def index
    @mutters = Mutter.all.order(id: "desc").page(params[:page]).per(10)

    render json: @mutters
  end

  # GET /mutters/1
  def show
    render json: @mutter
  end

  # POST /mutters
  def create
    @mutter = Mutter.new(mutter_params)

    if @mutter.save
      render json: @mutter, status: :created, location: @mutter
    else
      render json: @mutter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mutters/1
  def update
    if @mutter.update(mutter_params)
      render json: @mutter
    else
      render json: @mutter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mutters/1
  def destroy
    @mutter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutter
      @mutter = Mutter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mutter_params
      params.require(:mutter).permit(:user_id, :body)
    end
end
