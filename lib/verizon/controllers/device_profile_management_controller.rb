# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceProfileManagementController
  class DeviceProfileManagementController < BaseController
    # Uses the profile to bring the device under management.
    # @param [ActivateDeviceProfileRequest] body Required parameter: Device
    # Profile Query
    # @return [RequestResponse] response from the API call
    def activate_device_through_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/activate_enable',
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
                                'Bad request',
                                RestErrorResponseException))
        .execute
    end

    # Uses the profile to activate the device.
    # @param [ProfileRequest] body Required parameter: Device Profile Query
    # @return [RequestResponse] response from the API call
    def profile_to_activate_device(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/activate',
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
                                'Bad request',
                                RestErrorResponseException))
        .execute
    end

    # Uses the profile to deactivate the device.
    # @param [ProfileRequest2] body Required parameter: Device Profile Query
    # @return [RequestResponse] response from the API call
    def profile_to_deactivate_device(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/deactivate',
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
                                'Bad request',
                                RestErrorResponseException))
        .execute
    end

    # Allows the profile to set the fallback attribute to the device.
    # @param [SetFallbackAttributeRequest] body Required parameter: Device
    # Profile Query
    # @return [RequestResponse] response from the API call
    def profile_to_set_fallback_attribute(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/devices/profile/actions/setfallbackattribute',
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
                                'Bad request',
                                RestErrorResponseException))
        .execute
    end
  end
end
