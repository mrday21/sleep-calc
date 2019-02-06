class SleepCalcsController < ApplicationController
  before_action :set_sleep_calc, only: [:show, :edit, :update, :destroy]

  # GET /sleep_calcs
  # GET /sleep_calcs.json
  def index
    @sleep_calcs = SleepCalc.all
  end

  # GET /sleep_calcs/1
  # GET /sleep_calcs/1.json
  def show
  end

  # GET /sleep_calcs/new
  def new
    @sleep_calc = SleepCalc.new
  end

  # GET /sleep_calcs/1/edit
  def edit
  end

  # POST /sleep_calcs
  # POST /sleep_calcs.json
  def create
    @sleep_calc = SleepCalc.new(sleep_calc_params)

    respond_to do |format|
      if @sleep_calc.save
        format.html { redirect_to @sleep_calc, notice: 'Sleep calc was successfully created.' }
        format.json { render :show, status: :created, location: @sleep_calc }
      else
        format.html { render :new }
        format.json { render json: @sleep_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sleep_calcs/1
  # PATCH/PUT /sleep_calcs/1.json
  def update
    respond_to do |format|
      if @sleep_calc.update(sleep_calc_params)
        format.html { redirect_to @sleep_calc, notice: 'Sleep calc was successfully updated.' }
        format.json { render :show, status: :ok, location: @sleep_calc }
      else
        format.html { render :edit }
        format.json { render json: @sleep_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sleep_calcs/1
  # DELETE /sleep_calcs/1.json
  def destroy
    @sleep_calc.destroy
    respond_to do |format|
      format.html { redirect_to sleep_calcs_url, notice: 'Sleep calc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sleep_calc
      @sleep_calc = SleepCalc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sleep_calc_params
      params.fetch(:sleep_calc, {})
    end
end
