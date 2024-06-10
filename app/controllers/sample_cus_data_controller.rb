#require 'pycall/import'
#include PyCall::Import

class SampleCusDataController < ApplicationController
  before_action :set_sample_cus_datum, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  #before_action :correct_user

  # GET /sample_cus_data or /sample_cus_data.json
  def index
    @sample_cus_data = SampleCusDatum.all

    if params[:item_ids]
        @selected_items = @sample_cus_data.where(id: params[:item_ids]) if params[:item_ids]

        puts @selected_items.pluck(:first_name)

        redirect_to root_path
    else
        @selected_items = []
    end

  end

  # GET /sample_cus_data/1 or /sample_cus_data/1.json
  def show
  end

  # GET /sample_cus_data/new
  def new
    @sample_cus_datum = SampleCusDatum.new
  end

  # GET /sample_cus_data/1/edit
  def edit
  end

  # POST /sample_cus_data or /sample_cus_data.json
  def create
    @sample_cus_datum = SampleCusDatum.new(sample_cus_datum_params)

    respond_to do |format|
      if @sample_cus_datum.save
        format.html { redirect_to sample_cus_datum_url(@sample_cus_datum), notice: "Sample cus datum was successfully created." }
        format.json { render :show, status: :created, location: @sample_cus_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample_cus_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_cus_data/1 or /sample_cus_data/1.json
  def update
    respond_to do |format|
      if @sample_cus_datum.update(sample_cus_datum_params)
        format.html { redirect_to sample_cus_datum_url(@sample_cus_datum), notice: "Sample cus datum was successfully updated." }
        format.json { render :show, status: :ok, location: @sample_cus_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample_cus_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_cus_data/1 or /sample_cus_data/1.json
  def destroy
    @sample_cus_datum.destroy!

    respond_to do |format|
      format.html { redirect_to sample_cus_data_url, notice: "Sample cus datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  #def correct_user
    #@sample_cus_datum = current_user.sample_cus_data.find_by(id:params[:id])
    #redirect_to home_index_path, notice: "Not Authorized to access data" if @sample_cus_datum.nil?
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_cus_datum
      @sample_cus_datum = SampleCusDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample_cus_datum_params
      params.require(:sample_cus_datum).permit(:customerid, :first_name, :last_name, :destination, :phone, :date, :balance)
    end
end
