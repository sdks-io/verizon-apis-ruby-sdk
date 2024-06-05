# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # MV2TriggersController
  class MV2TriggersController < BaseController
    # This creates an individual change plan for account group share.
    # @param [CreateTriggerV2Request] body Required parameter: Example:
    # @return [TriggerV2Response] response from the API call
    def create_trigger(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v2/triggers',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(TriggerV2Response.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RulesEngineRestErrorResponseException))
        .execute
    end

    # This updates an individual change plan for account group share.
    # @param [String] vz_m2m_token Required parameter: M2M-MC Session Token
    # @param [UpdateTriggerV2Request] body Required parameter: Example:
    # @param [String] x_request_id Optional parameter: Transaction Id
    # @return [TriggerV2Response] response from the API call
    def update_trigger(vz_m2m_token,
                       body,
                       x_request_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/m2m/v2/triggers',
                                     Server::THINGSPACE)
                   .header_param(new_parameter(vz_m2m_token, key: 'VZ-M2M-Token'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(x_request_id, key: 'X-Request-ID'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(TriggerV2Response.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error Response',
                                RulesEngineRestErrorResponseException))
        .execute
    end
  end
end