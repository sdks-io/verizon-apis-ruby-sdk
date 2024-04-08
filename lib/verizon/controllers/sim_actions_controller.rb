# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SIMActionsController
  class SIMActionsController < BaseController
    # Uses the profile to activate the SIM.
    # @param [ESIMProfileRequest] body Required parameter: Device Profile
    # Query
    # @return [ESIMRequestResponse] response from the API call
    def setactivate_using_post(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/profile/actions/activate',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ESIMRequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request',
                                ESIMRestErrorResponseException)
                   .local_error('401',
                                'Unauthorized',
                                ESIMRestErrorResponseException)
                   .local_error('403',
                                'Forbidden',
                                ESIMRestErrorResponseException)
                   .local_error('404',
                                'Not Found / Does not exist',
                                ESIMRestErrorResponseException)
                   .local_error('406',
                                'Format / Request Unacceptable',
                                ESIMRestErrorResponseException)
                   .local_error('429',
                                'Too many requests',
                                ESIMRestErrorResponseException)
                   .local_error('default',
                                'Error response',
                                ESIMRestErrorResponseException))
        .execute
    end

    # Uses the profile to deactivate the SIM.
    # @param [ProfileRequest2] body Required parameter: Device Profile Query
    # @return [ESIMRequestResponse] response from the API call
    def setdeactivate_using_post(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/profile/actions/deactivate',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('oAuth2')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ESIMRequestResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request',
                                ESIMRestErrorResponseException)
                   .local_error('401',
                                'Unauthorized',
                                ESIMRestErrorResponseException)
                   .local_error('403',
                                'Forbidden',
                                ESIMRestErrorResponseException)
                   .local_error('404',
                                'Not Found / Does not exist',
                                ESIMRestErrorResponseException)
                   .local_error('406',
                                'Format / Request Unacceptable',
                                ESIMRestErrorResponseException)
                   .local_error('429',
                                'Too many requests',
                                ESIMRestErrorResponseException)
                   .local_error('default',
                                'Error response',
                                ESIMRestErrorResponseException))
        .execute
    end
  end
end