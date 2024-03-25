class ResultMotivesController < ApplicationController
  before_action :set_result_motive, only: %i[ show edit update destroy ]

  # GET /result_motives or /result_motives.json
  def index
    @result_motives = ResultMotive.all
  end

  # GET /result_motives/1 or /result_motives/1.json
  def show
  end

  # GET /result_motives/new
  def new
    @result_motive = ResultMotive.new
  end

  # GET /result_motives/1/edit
  def edit
  end

  # POST /result_motives or /result_motives.json
  def create
    @result_motive = ResultMotive.new(result_motive_params)

    respond_to do |format|
      if @result_motive.save
        format.html { redirect_to result_motive_url(@result_motive), notice: "Result motive was successfully created." }
        format.json { render :show, status: :created, location: @result_motive }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @result_motive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /result_motives/1 or /result_motives/1.json
  def update
    respond_to do |format|
      if @result_motive.update(result_motive_params)
        format.html { redirect_to result_motive_url(@result_motive), notice: "Result motive was successfully updated." }
        format.json { render :show, status: :ok, location: @result_motive }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @result_motive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /result_motives/1 or /result_motives/1.json
  def destroy
    @result_motive.destroy!

    respond_to do |format|
      format.html { redirect_to result_motives_url, notice: "Result motive was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result_motive
      @result_motive = ResultMotive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def result_motive_params
      params.require(:result_motive).permit(:name, :description)
    end
end
