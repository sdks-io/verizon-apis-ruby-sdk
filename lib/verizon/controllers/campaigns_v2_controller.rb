# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # CampaignsV2Controller
  class CampaignsV2Controller < BaseController
    # This endpoint allows user to schedule a software upgrade.
    # @param [String] account Required parameter: Account identifier.
    # @param [CampaignSoftwareUpgrade] body Required parameter: Software upgrade
    # information.
    # @return [CampaignSoftware] response from the API call
    def schedule_campaign_firmware_upgrade(account,
                                           body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/campaigns/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CampaignSoftware.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to get information of a software upgrade.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Software upgrade
    # identifier.
    # @return [CampaignSoftware] response from the API call
    def get_campaign_information(account,
                                 campaign_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/campaigns/{account}/{campaignId}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CampaignSoftware.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to Add or Remove devices to an existing software
    # upgrade.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Software upgrade
    # information.
    # @param [V2AddOrRemoveDeviceRequest] body Required parameter: Request to
    # add or remove device to existing software upgrade information.
    # @return [V2AddOrRemoveDeviceResult] response from the API call
    def update_campaign_firmware_devices(account,
                                         campaign_id,
                                         body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/campaigns/{account}/{campaignId}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(V2AddOrRemoveDeviceResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to cancel software upgrade. A software upgrade
    # already started can not be cancelled.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Unique identifier of
    # campaign.
    # @return [FotaV2SuccessResult] response from the API call
    def cancel_campaign(account,
                        campaign_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/campaigns/{account}/{campaignId}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FotaV2SuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # This endpoint allows user to change campaign dates and time windows.
    # Fields which need to remain unchanged should be also provided.
    # @param [String] account Required parameter: Account identifier.
    # @param [String] campaign_id Required parameter: Software upgrade
    # information.
    # @param [V2ChangeCampaignDatesRequest] body Required parameter: New dates
    # and time windows.
    # @return [CampaignSoftware] response from the API call
    def update_campaign_dates(account,
                              campaign_id,
                              body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/campaigns/{account}/{campaignId}/dates',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(campaign_id, key: 'campaignId')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CampaignSoftware.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # You can upload configuration files and schedule them in a campaign to
    # devices.
    # @param [String] acc Required parameter: Account identifier.
    # @param [UploadAndScheduleFileRequest] body Required parameter: Device
    # logging information.
    # @return [UploadAndScheduleFileResponse] response from the API call
    def schedule_file_upgrade(acc,
                              body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/campaigns/files/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UploadAndScheduleFileResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # Campaign time windows for downloading and installing software are
    # available as long as the device OEM supports this.
    # @param [String] acc Required parameter: Account identifier.
    # @param [SchedulesSoftwareUpgradeRequest] body Required parameter: Device
    # logging information.
    # @return [UploadAndScheduleFileResponse] response from the API call
    def schedule_sw_upgrade_http_devices(acc,
                                         body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/campaigns/software/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UploadAndScheduleFileResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end
  end
end
