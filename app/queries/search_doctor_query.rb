# A Search Doctor query object, it performs search either by name, location, or speciality
class SearchDoctorQuery
  module Scopes
    def by_name(name)
      return self if name.blank?

      firstname = User.arel_table[:first_name]
      lastname = User.arel_table[:last_name]
      result = User.where(firstname.matches("%#{name}%"))
        .or(User.where(lastname.matches("%#{name}%")))
      joins(:user).merge(result)
    end

    def by_location(location)
      return self if location.blank?
      joins(:user)
        .where(users: {state: location})
    end

    def by_speciality(speciality)
      return self if speciality.blank?

      speciality = Speciality.find_by_name(speciality)
      doctor_speciality = DoctorSpeciality.where(speciality_id: speciality.id)

      joins(:specialities).merge(doctor_speciality)
    end
  end

  def self.call(filters)
    scope = Doctor.approved.extending(Scopes)
      .by_name(filters[:doctor_name])
      .by_location(filters[:location])
      .by_speciality(filters[:doctor_speciality])
    scope.includes(
      :user,
      :doctor_ratings,
      :specialities,
      user: [:profile_pic_attachment, :profile_pic_blob],
    )
  end

end
