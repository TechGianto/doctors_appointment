require 'date'
class AppointmentController < ApplicationController
    def create_appointment
        doa = DateTime.parse("#{params[:date]}T#{params[:time]}")
        @appointment = Appointment.create(
          date_of_appointment: doa,
          no_of_session: params[:no_of_session],
          doctor_id: params[:doctor_id],
          patient_id: params[:patient_id],
          status: params[:status],
        )

        respond_to do |format|
            format.html
            format.json do
                render json(accepted: true)
            end
        end
    end
end
