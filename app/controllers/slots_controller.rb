# frozen_string_literal: true

# Controller for SLOTS
require 'pry'
class SlotsController < ApplicationController
  before_action :set_slot, only: %i[show edit update destroy]
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
    @appointment = Appointment.new
    set_slot
    @professionals = User.where(role: 'professional')
    @services = Service.all
  end

  def schedule_new

  end

  def scheduler
    @rooms = params[:rooms].to_i
    @start_date = params[:start_date].to_date
    @end_date = params[:end_date].to_date.end_of_day unless params[:end_date].to_date.nil?
    @schedule = schedule(params)
  
    while @start_date <= @end_date
      @schedule.keys.each do |day|
        if @start_date.public_send("#{day.downcase}?")
          next if @schedule[day].blank?
  
          day_in, day_out = @schedule[day] 
          start_time = day_in
          while start_time < day_out
            Slot.create(
                @rooms.times.map { |index| { start_time: "#{@start_date} #{start_time}:00:00 UTC" } }
              )
              start_time += 1
            end
          end
      end
      @start_date += 1
    end
    redirect_to slots_path
  end

  def professionals_reservations
    @slots = Slot.all
    @slots_availables = Slot.where(status: 'available')
    # @value = params['Sunday'].map { |x| x.to_i}
    # pp @value.map { |x| x.class}
    # pp @value.class
    # pp 'hola mundo'
    
  end

  # GET /slots/new
  def new
    @slot = Slot.new
  end

  # GET /slots/1/edit
  def edit; end

  # POST /slots or /slots.json
  def create
    @slot = Slot.new(slot_params)

    respond_to do |format|
      if @slot.save
        format.html { redirect_to slot_url(@slot), notice: 'Slot was successfully created.' }
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
        format.html { redirect_to slots_url, notice: 'Space was successfully reserved.' }
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
      format.html { redirect_to slots_url, notice: 'Slot was successfully destroyed.' }
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

  def schedule(params)
    Date::DAYNAMES.map(&:downcase).to_h do |day|
      day_in, day_out = params
        .values_at("#{day}_in".to_sym, "#{day}_out".to_sym)
        .map(&:to_i)
  
      [day.capitalize, [day_in, day_out]]
    end
  end
end
