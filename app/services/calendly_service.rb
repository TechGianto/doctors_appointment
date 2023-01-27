module CalendlyService
  class ApiError < StandardError; end

  def self.api_modules
    return self.constants.map(&self.method(:const_get)).select do |api_module|
      api_module.is_a?(Module) && api_module.included_modules.include?(self::ApiModule)
    end
  end

  module Organization
    include ApiModule

    ENDPOINTS = {
      list_invitation: { get: '/organizations/:organization_uuid/invitations'.freeze },
      invite: { post: '/organizations/:organization_uuid/invitations'.freeze },
      get_invite: { get: '/organizations/:organization_uuid/invitations/:invite_id'.freeze },
    }

    ListInvitationResponse = Struct.new(:collection, :pagination) do
      include JsonResponseHelper

      def success?
        return self.collection&.present?
      end

      def page
        self.pagination&.dig(:page)
      end

      def total
        self.pagination&.dig(:count)
      end
    end

    def self.list_invitation
      organization_uuid = CALENDLY_ORGANIZATION_UUID

      endpoint = to_endpoint_path(__method__, organization_uuid: organization_uuid)
      return call(__method__, endpoint: endpoint)
    end
  end
end
