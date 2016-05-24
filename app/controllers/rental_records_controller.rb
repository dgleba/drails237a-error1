class RentalRecordsController < ApplicationController
  before_action :set_rental_record, only: [:show, :edit, :update, :destroy]

  # GET /rental_records
  # GET /rental_records.json
  def index
    #@rental_records = RentalRecord.paginate(:page => params[:page], :per_page => 10).order('id DESC')
    @rental_records = RentalRecord.all
  end

  # GET /rental_records/1
  # GET /rental_records/1.json
  def show
  end

  # GET /rental_records/new
  def new
    @rental_record = RentalRecord.new
  end

  # GET /rental_records/1/edit
  def edit
  end

  # POST /rental_records
  # POST /rental_records.json
  def create
    @rental_record = RentalRecord.new(rental_record_params)

    respond_to do |format|
      if @rental_record.save
        format.html { redirect_to @rental_record, notice: 'Rental record was successfully created.' }
        format.json { render :show, status: :created, location: @rental_record }
      else
        format.html { render :new }
        format.json { render json: @rental_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_records/1
  # PATCH/PUT /rental_records/1.json
  def update
    respond_to do |format|
      if @rental_record.update(rental_record_params)
        format.html { redirect_to @rental_record, notice: 'Rental record was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_record }
      else
        format.html { render :edit }
        format.json { render json: @rental_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_records/1
  # DELETE /rental_records/1.json
  def destroy
    @rental_record.destroy
    respond_to do |format|
      format.html { redirect_to rental_records_url, notice: 'Rental record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_record
      @rental_record = RentalRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_record_params
      params.require(:rental_record).permit(:customer_id, :vehicle_id, :start_date, :end_date, :lastUpdated, :output)
    end
end
