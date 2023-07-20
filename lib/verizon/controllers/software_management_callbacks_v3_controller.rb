# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementCallbacksV3Controller
  class SoftwareManagementCallbacksV3Controller < BaseController
    # This endpoint allows user to get the registered callback information.
    # @param [String] acc Required parameter: Account identifier.
    # @return [FotaV3CallbackSummary] response from the API call
    def list_registered_callbacks(acc)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/callbacks/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FotaV3CallbackSummary.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # This endpoint allows the user to create the HTTPS callback address.
    # @param [String] acc Required parameter: Account identifier.
    # @param [FotaV3CallbackRegistrationRequest] body Required parameter:
    # Callback URL registration.
    # @return [FotaV3CallbackRegistrationResult] response from the API call
    def register_callback(acc,
                          body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/callbacks/{acc}',
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
                   .deserialize_into(FotaV3CallbackRegistrationResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # This endpoint allows user to delete a previously registered callback URL.
    # @param [String] acc Required parameter: Account identifier.
    # @return [FotaV3SuccessResult] response from the API call
    def deregister_callback(acc)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/callbacks/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V3)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(FotaV3SuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end

    # This endpoint allows the user to update the HTTPS callback address.
    # @param [String] acc Required parameter: Account identifier.
    # @param [FotaV3CallbackRegistrationRequest] body Required parameter:
    # Callback URL registration.
    # @return [FotaV3CallbackRegistrationResult] response from the API call
    def update_callback(acc,
                        body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/callbacks/{acc}',
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
                   .deserialize_into(FotaV3CallbackRegistrationResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV3ResultException))
        .execute
    end
  end
end
