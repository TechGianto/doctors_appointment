class CalendlyProvider
  extend CalendarProvider

  def self.invite!(data)
    send_invite = CalendlyService::Organization.invite(data)
    resource = send_invite.resource
    external_ref_id = URI(resource[:uri]).path.split('/').last

    doctor.calendar_invites.create(
      metadata: resource,
      status: resource[:status].to_sym,
      provider: provider.to_s,
      external_reference_id: external_ref_id,
    )
  end

  def self.verify!(invite)
    external_id = invite.external_reference_id
    response = CalendlyService::Organization.get_invite(external_id)
    return if !response

    invite.update(status: response.resource[:status].to_sym, metadata: response.resource)
  end

  def self.get_event_types(doctor)
    # TODO add unique index to calender_invite table on Provider and user_id
    calendar_invite = doctor.calendar_invites.where(provider: self.name).take
    return if calendar_invite.nil?

    user = calendar_invite.metadata['user']

    return CalendlyService::EventTypes.get_event_types(user)&.collection
  end
end
