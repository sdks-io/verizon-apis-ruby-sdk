# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MECController
  class MECController < BaseController
    # TODO: type endpoint description here
    # @param [String] aname Required parameter: Account name.
    # @return [KPIInfoList] response from the API call
    def kpi_list(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/devices/mec/kpi/list/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(KPIInfoList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] aname Required parameter: Account name.
    # @return [MECProfileList] response from the API call
    def get_profile_list(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/devices/mec/profiles/list/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(MECProfileList.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [ChangePmecDeviceStateActivateRequest] body Required parameter:
    # Example:
    # @return [ChangeMecDeviceStateResponse] response from the API call
    def change_pmec_device_state_activate(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/mec/actions/state/activate',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ChangeMecDeviceStateResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [ChangePmecDeviceStateBulkDeactivateRequest] body Required
    # parameter: Example:
    # @return [ChangeMecDeviceStateResponse] response from the API call
    def change_pmec_device_state_bulk_deactivate(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/mec/actions/state/deactivate',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ChangeMecDeviceStateResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [ChangePmecDeviceProfileRequest] body Required parameter:
    # Example:
    # @return [ChangeMecDeviceProfileResponse] response from the API call
    def change_pmec_device_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/mec/actions/profile',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ChangeMecDeviceProfileResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [ChangePmecDeviceStateBulkDeactivateRequest] body Required
    # parameter: Example:
    # @return [ChangeMecDeviceIPAddressResponse] response from the API call
    def change_pmec_device_i_paddress_bulk(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/m2m/v1/devices/mec/actions/ipaddress',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ChangeMecDeviceIPAddressResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @param [String] aname Required parameter: Account name.
    # @return [GetMECPerformanceConsentResponse] response from the API call
    def get_mec_performance_consent(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/devices/mec/performance/consent/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetMECPerformanceConsentResponse.method(:from_hash))
                   .is_api_response(true))
        .execute
    end
  end
end
