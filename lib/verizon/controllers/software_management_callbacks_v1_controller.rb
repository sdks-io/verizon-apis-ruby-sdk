# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementCallbacksV1Controller
  class SoftwareManagementCallbacksV1Controller < BaseController
    # Returns the name and endpoint URL of the callback listening services
    # registered for a given account.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_registered_callbacks(account)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/callbacks/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(RegisteredCallbacks.method(:from_hash))
                    .is_api_response(true)
                    .is_response_array(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV1ResultException))
        .execute
    end

    # Registers a URL to receive RESTful messages from a callback service when
    # new firmware versions are available and when upgrades start and finish.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [FotaV1CallbackRegistrationRequest] body Required parameter:
    # Callback details.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def register_callback(account,
                          body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/callbacks/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FotaV1CallbackRegistrationResult.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV1ResultException))
        .execute
    end

    # Deregisters the callback endpoint and stops ThingSpace from sending FOTA
    # callback messages for the specified account.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [CallbackServiceEnum] service Required parameter: Callback type.
    # Must be 'Fota' for Software Management Services API.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def deregister_callback(account,
                            service)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/callbacks/{account}/name/{service}',
                                     Server::SOFTWARE_MANAGEMENT_V1)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(service, key: 'service')
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
