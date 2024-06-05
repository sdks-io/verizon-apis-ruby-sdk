# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # FirmwareV1Controller
  class FirmwareV1Controller < BaseController
    # Lists all device firmware images available for an account, based on the
    # devices registered to that account.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @return [Array[Firmware]] response from the API call
    def list_available_firmware(account)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/firmware/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Firmware.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV1ResultException))
        .execute
    end

    # Schedules a firmware upgrade for devices.
    # @param [FirmwareUpgradeRequest] body Required parameter: Details of the
    # firmware upgrade request.
    # @return [FirmwareUpgrade] response from the API call
    def schedule_firmware_upgrade(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/upgrades',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FirmwareUpgrade.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV1ResultException))
        .execute
    end

    # Returns information about a specified upgrade, include the target date of
    # the upgrade, the list of devices in the upgrade, and the status of the
    # upgrade for each device.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] upgrade_id Required parameter: The UUID of the upgrade,
    # returned by POST /upgrades when the upgrade was scheduled.
    # @return [FirmwareUpgrade] response from the API call
    def list_firmware_upgrade_details(account,
                                      upgrade_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/upgrades/{account}/upgrade/{upgradeId}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(upgrade_id, key: 'upgradeId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FirmwareUpgrade.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV1ResultException))
        .execute
    end

    # Add or remove devices from a scheduled upgrade.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] upgrade_id Required parameter: The UUID of the upgrade,
    # returned by POST /upgrades when the upgrade was scheduled.
    # @param [FirmwareUpgradeChangeRequest] body Required parameter: List of
    # devices to add or remove.
    # @return [FirmwareUpgradeChangeResult] response from the API call
    def update_firmware_upgrade_devices(account,
                                        upgrade_id,
                                        body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/upgrades/{account}/upgrade/{upgradeId}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(upgrade_id, key: 'upgradeId')
                                    .should_encode(true))
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FirmwareUpgradeChangeResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV1ResultException))
        .execute
    end

    # Cancel a scheduled firmware upgrade.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] upgrade_id Required parameter: The UUID of the scheduled
    # upgrade that you want to cancel.
    # @return [FotaV1SuccessResult] response from the API call
    def cancel_scheduled_firmware_upgrade(account,
                                          upgrade_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/upgrades/{account}/upgrade/{upgradeId}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(upgrade_id, key: 'upgradeId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FotaV1SuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV1ResultException))
        .execute
    end
  end
end
