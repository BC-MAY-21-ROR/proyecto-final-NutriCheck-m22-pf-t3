class SlotsController < ApplicationController
  before_action :set_slot, only: %i[ show edit update destroy ]
  before_action :authenticate_patient!, only: %i[services]

  # GET /slots or /slots.json
  def index
    @slots = Slot.all
  end

  def professionals
    @slots = Slot.all
    @professionals = User.where(role: 'professional')
  end

  def services
    @slots = Slot.all
    @services = Service.all
    @patients = Patient.all
  end
  # GET /slots/1 or /slots/1.json
  def show
    
    @professionals = User.where(role: 'professional')
    @services = Service.all
  end

  def reservations
    @appointment = Appointment.new()
    set_slot
    @professionals = User.where(role: 'professional')
    @services = Service.all
  end

  # GET /slots/new
  def new
    @slot = Slot.new
  end

  # GET /slots/1/edit
  def edit
  end

  # POST /slots or /slots.json
  def create
    @slot = Slot.new(slot_params)

    respond_to do |format|
      if @slot.save
        format.html { redirect_to slot_url(@slot), notice: "Slot was successfully created." }
        format.json { render :show, status: :created, location: @slot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slots/1 or /slots/1.json
  def update
    respond_to do |format|
      if @slot.update(slot_params)
        @slot.update_column(:status, 'not available')
        format.html { redirect_to slots_url, notice: "Space was successfully reserved." }
        format.json { render :show, status: :ok, location: @slot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slots/1 or /slots/1.json
  def destroy
    @slot.destroy

    respond_to do |format|
      format.html { redirect_to slots_url, notice: "Slot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slot
      @slot = Slot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slot_params
      params.require(:slot).permit(:service, :professional, :start_time, :status)
    end

    def appointment_params
      params.require(:appointment).permit(
        :date_time,
        :reason,
        :service_id,
        :patient_id,
        :user_id,
        :status,
        :payment_status,
        :score, 
        :review
      )
    end

end
