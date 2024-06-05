# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementReportsV3Controller
  class SoftwareManagementReportsV3Controller < BaseController
    # Retrieve a list of campaigns for an account that have a specified campaign
    # status.
    # @param [String] acc Required parameter: Account identifier.
    # @param [CampaignStatusEnum] campaign_status Required parameter: Campaign
    # status.
    # @param [String] last_seen_campaign_id Optional parameter: Last seen
    # campaign Id.
    # @return [V3CampaignHistory] response from the API call
    def get_campaign_history_by_status(acc,
                                       campaign_status,
                                       last_seen_campaign_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{acc}/firmware/campaigns',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .query_param(new_parameter(campaign_status, key: 'campaignStatus'))
                   .query_param(new_parameter(last_seen_campaign_id, key: 'lastSeenCampaignId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V3CampaignHistory.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # Retrieve campaign history for a specific device.
    # @param [String] acc Required parameter: Account identifier.
    # @param [String] device_id Required parameter: Device IMEI identifier.
    # @return [Array[DeviceFirmwareUpgrade]] response from the API call
    def get_device_firmware_upgrade_history(acc,
                                            device_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{acc}/devices/{deviceId}',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .template_param(new_parameter(device_id, key: 'deviceId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceFirmwareUpgrade.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # Retrieve a list of all devices in a campaign and the status of each
    # device.
    # @param [String] acc Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Campaign identifier.
    # @param [String] last_seen_device_id Optional parameter: Last seen device
    # identifier.
    # @return [V3CampaignDevice] response from the API call
    def get_campaign_device_status(acc,
                                   campaign_id,
                                   last_seen_device_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{acc}/campaigns/{campaignId}/devices',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .query_param(new_parameter(last_seen_device_id, key: 'lastSeenDeviceId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V3CampaignDevice.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end
  end
end
