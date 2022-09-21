module PatientHelper
    def session_to_hour(total_minute)
        hours = total_minute / 60
        minutes = (total_minute) % 60
        "#{ hours }h #{ minutes }min"
    end
end
