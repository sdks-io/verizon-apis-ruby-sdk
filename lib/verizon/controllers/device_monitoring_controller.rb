# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceMonitoringController
  class DeviceMonitoringController < BaseController
    # Stop Device Reachability monitors.
    # @param [String] account_name Required parameter: The numeric name of the
    # account.
    # @param [Array[String]] monitor_ids Required parameter: The array contains
    # the monitorIDs (UUID) for which the monitor is to be deleted.
    # @return [RequestResponse] response from the API call
    def stop_device_reachability(account_name,
                                 monitor_ids)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/v1/diagnostics/basic/devicereachability',
                                     Server::M2M)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .query_param(new_parameter(monitor_ids, key: 'monitorIds'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RestErrorResponseException))
        .execute
    end

    # Register for notification reports based on the request type.
    # @param [NotificationReportRequest] body Required parameter: Create
    # Reachability Report Request
    # @return [RequestResponse] response from the API call
    def device_reachability(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/diagnostics/basic/devicereachability',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RestErrorResponseException))
        .execute
    end
  end
end
