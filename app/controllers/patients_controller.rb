# frozen_string_literal: true

# Controller for PATIENTS

class PatientsController < ApplicationController
  load_and_authorize_resource
  def index
    @patients = Patient.all.with_attached_photo
    pagination
  end

  def search
    @patients = Patient.all.with_attached_photo.order(created_at: :desc)
    if params[:query_text].present?
      @patients = @patients.search_full_text(params[:query_text])
    end
    pagination
  end

  def new
    @patient = Patient.new
  end

  def show
    patient
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_patients(1)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    patient
  end

  def update
    patient
    if @patient.update(patient_params)
      redirect_patients(2)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    patient
    if @patient.destroy
      redirect_patients(3)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def dashboard
    @patient = current_patient
  end

  private

  def redirect_patients(option)
    case option
    when 1
      redirect_to patients_path, notice: 'New patient created successfully'
    when 2
      if current_patient == @patient
        redirect_to patient_dashboard_path, notice: 'Edited successfully'
      else
        redirect_to patients_path, notice: 'Patient was edited successfully'
      end
    else
      redirect_to patients_path, notice: 'Patient was deleted successfully'
    end
  end

  def pagination
    @pagy, @patients = pagy(@patients, items: 25)
  end

  def patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(
      :name, :second_name,
      :last_name, :second_last_name,
      :birth_date, :phone,
      :email,
      :height,
      :observations,
      :photo
    )
  end
end
