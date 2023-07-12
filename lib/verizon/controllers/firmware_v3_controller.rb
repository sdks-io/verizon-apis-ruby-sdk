# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # FirmwareV3Controller
  class FirmwareV3Controller < BaseController
    # This endpoint allows user to list the firmware of an account.
    # @param [String] acc Required parameter: Account identifier.
    # @param [FirmwareProtocolEnum] protocol Required parameter: Filter to
    # retrieve a specific protocol type used.
    # @return [Array[FirmwarePackage]] response from the API call
    def list_available_firmware(acc,
                                protocol)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/firmware/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .query_param(new_parameter(protocol, key: 'protocol'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FirmwarePackage.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # Synchronize ThingSpace with the FOTA server for up to 100 devices.
    # @param [String] acc Required parameter: Account identifier.
    # @param [FirmwareIMEI] body Required parameter: DeviceIds to get firmware
    # info synchronously.
    # @return [DeviceFirmwareList] response from the API call
    def synchronize_device_firmware(acc,
                                    body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/firmware/{acc}/devices',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceFirmwareList.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # Ask a device to report its firmware version asynchronously.
    # @param [String] acc Required parameter: Account identifier.
    # @param [String] device_id Required parameter: Device identifier.
    # @return [DeviceFirmwareVersionUpdateResult] response from the API call
    def report_device_firmware(acc,
                               device_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/firmware/{acc}/async/{deviceId}',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .template_param(new_parameter(device_id, key: 'deviceId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceFirmwareVersionUpdateResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end
  end
end