# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceActionsController
  class DeviceActionsController < BaseController
    # Allows the profile to fetch the complete device list. This works with
    # Verizon US and Global profiles.
    # @param [GetDeviceListWithProfilesRequest] body Required parameter: Device
    # Profile Query
    # @return [GIORequestResponse] response from the API call
    def retrieve_the_global_device_list(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v2/devices/actions/list',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GIORequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error response',
                                GIORestErrorResponseException))
        .execute
    end

    # Retreive the provisioning history of a specific device or devices.
    # @param [ProvhistoryRequest] body Required parameter: Device Provisioning
    # History
    # @return [GIORequestResponse] response from the API call
    def retrieve_device_provisioning_history(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v2/devices/history/actions/list',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GIORequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error response',
                                GIORestErrorResponseException))
        .execute
    end

    # Get the status of an asynchronous request made with the Device Actions.
    # @param [String] account_name Required parameter: Example:
    # @param [String] request_id Required parameter: Example:
    # @return [StatusResponse] response from the API call
    def get_asynchronous_request_status(account_name,
                                        request_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v2/accounts/{accountName}/requests/{requestID}/status',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .template_param(new_parameter(request_id, key: 'requestID')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(StatusResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Error response',
                                GIORestErrorResponseException))
        .execute
    end
  end
end
