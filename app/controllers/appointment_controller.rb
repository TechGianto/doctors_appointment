class AppointmentController < ApplicationController
    def create
        if !valid_params
            render json: {error: 'please select a date or time or a doctor'}, status: :bad_request
            return
        end

        doa = DateTime.parse("#{appointment_params[:date]}T#{appointment_params[:time]}")
        @appointment = Appointment.create(
          date_of_appointment: doa,
          doctor_id: appointment_params[:doctor_id],
          patient_id: current_user.id,
        )

        respond_to do |format|
            format.html
            format.json do
                render json(accepted: true)
            end
        end
    end

  private

    def appointment_params
        params.permit(:date, :time, :doctor_id)
    end

    def valid_params
        params[:date].presence && params[:time].presence && params[:doctor_id].presence
    end
end
