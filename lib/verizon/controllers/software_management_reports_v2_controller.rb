# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementReportsV2Controller
  class SoftwareManagementReportsV2Controller < BaseController
    # This endpoint allows user to list a certain type of software of an
    # account.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] distribution_type Optional parameter: Filter
    # distributionType to get specific type of software. Value is LWM2M, OMD-DM
    # or HTTP.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_available_software(account,
                                distribution_type: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/software/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .query_param(new_parameter(distribution_type, key: 'distributionType'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SoftwarePackage.method(:from_hash))
                    .is_api_response(true)
                    .is_response_array(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end

    # The device endpoint gets devices information of an account.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] last_seen_device_id Optional parameter: Last seen device
    # identifier.
    # @param [String] distribution_type Optional parameter: Filter
    # distributionType to get specific type of devices. Values is LWM2M, OMD-DM
    # or HTTP.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_account_devices(account,
                             last_seen_device_id: nil,
                             distribution_type: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/devices/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .query_param(new_parameter(last_seen_device_id, key: 'lastSeenDeviceId'))
                   .query_param(new_parameter(distribution_type, key: 'distributionType'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(V2AccountDeviceList.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end

    # The endpoint allows user to get software upgrade history of a device based
    # on device IMEI.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] device_id Required parameter: Device IMEI identifier.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_device_firmware_upgrade_history(account,
                                            device_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{account}/devices/{deviceId}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(device_id, key: 'deviceId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DeviceSoftwareUpgrade.method(:from_hash))
                    .is_api_response(true)
                    .is_response_array(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end

    # The report endpoint allows user to get campaign history of an account for
    # specified status.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_status Required parameter: Status of the
    # campaign.
    # @param [String] last_seen_campaign_id Optional parameter: Last seen
    # campaign Id.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_campaign_history_by_status(account,
                                       campaign_status,
                                       last_seen_campaign_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{account}/campaigns',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .query_param(new_parameter(campaign_status, key: 'campaignStatus'))
                   .query_param(new_parameter(last_seen_campaign_id, key: 'lastSeenCampaignId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(V2CampaignHistory.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end

    # The report endpoint allows user to get the full list of device of a
    # campaign.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Campaign identifier.
    # @param [String] last_seen_device_id Optional parameter: Last seen device
    # identifier.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_campaign_device_status(account,
                                   campaign_id,
                                   last_seen_device_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/reports/{account}/campaigns/{campaignId}/devices',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .query_param(new_parameter(last_seen_device_id, key: 'lastSeenDeviceId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(V2CampaignDevice.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end
  end
end
