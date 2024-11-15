# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DiagnosticsSettingsController
  class DiagnosticsSettingsController < BaseController
    # This endpoint retrieves diagnostics settings synchronously.
    # @param [String] account_name Required parameter: Account identifier.
    # @param [String] devices Required parameter: Devices list format:
    # [{"id":"{imei1}","kind":"imei"},{"id":"{imei2}","kind":"imei"}].
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_diagnostics_settings(account_name,
                                  devices)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/devices/settings',
                                     Server::DEVICE_DIAGNOSTICS)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .query_param(new_parameter(devices, key: 'devices'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DiagnosticObservationSetting.method(:from_hash))
                    .is_api_response(true)
                    .is_response_array(true)
                    .local_error('default',
                                 'Error response.',
                                 DeviceDiagnosticsResultException))
        .execute
    end
  end
end
