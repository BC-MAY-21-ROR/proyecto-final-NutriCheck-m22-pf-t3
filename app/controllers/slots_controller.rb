# frozen_string_literal: true

# Controller for SLOTS

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

    @schedule = { 'Monday' => [params[:monday_in].to_i, params[:monday_out].to_i],
                  'Tuesday' => [params[:tuesday_in].to_i, params[:tuesday_out].to_i],
                  'Wednesday' => [params[:wednesday_in].to_i, params[:wednesday_out].to_i],
                  'Thursday' => [params[:thursday_in].to_i, params[:thursday_out].to_i],
                  'Friday' => [params[:friday_in].to_i, params[:friday_out].to_i],
                  'Saturday' => [params[:saturday_in].to_i, params[:saturday_out].to_i],
                  'Sunday' => [params[:sunday_in].to_i, params[:sunday_out].to_i] }

    while @start_date <= @end_date
      if @start_date.monday?
        unless @schedule['Monday'].first.nil?
          start_time = @schedule['Monday'].first
          while start_time < @schedule['Monday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.tuesday?
        unless @schedule['Tuesday'].first.nil?
          start_time = @schedule['Tuesday'].first
          while start_time < @schedule['Tuesday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.wednesday?
        unless @schedule['Wednesday'].first.nil?
          start_time = @schedule['Wednesday'].first
          while start_time < @schedule['Wednesday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.thursday?
        unless @schedule['Thursday'].first.nil?
          start_time = @schedule['Thursday'].first
          while start_time < @schedule['Thursday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.friday?
        unless @schedule['Friday'].first.nil?
          start_time = @schedule['Friday'].first
          while start_time < @schedule['Friday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.saturday?
        unless @schedule['Saturday'].first.nil?
          start_time = @schedule['Saturday'].first
          while start_time < @schedule['Saturday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end
      elsif @start_date.sunday?
        unless @schedule['Sunday'].first.nil?
          start_time = @schedule['Sunday'].first
          while start_time < @schedule['Sunday'].last
            @rooms.times do
              Slot.create(start_time: "#{@start_date} #{start_time}:00:00 UTC")
            end
            start_time += 1
          end
        end

      end
      @start_date += 1
    end

    redirect_to slots_path
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
end
