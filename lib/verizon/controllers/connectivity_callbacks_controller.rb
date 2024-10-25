# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ConnectivityCallbacksController
  class ConnectivityCallbacksController < BaseController
    # Returns the name and endpoint URL of the callback listening services
    # registered for a given account.
    # @param [String] aname Required parameter: Account name.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_registered_callbacks(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/callbacks/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ConnectivityManagementCallback.method(:from_hash))
                    .is_api_response(true)
                    .is_response_array(true)
                    .local_error('400',
                                 'Error response.',
                                 ConnectivityManagementResultException))
        .execute
    end

    # You are responsible for creating and running a listening process on your
    # server at that URL.
    # @param [String] aname Required parameter: Account name.
    # @param [RegisterCallbackRequest] body Required parameter: Request to
    # register a callback.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def register_callback(aname,
                          body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/callbacks/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CallbackActionResult.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Error response.',
                                 ConnectivityManagementResultException))
        .execute
    end

    # Stops ThingSpace from sending callback messages for the specified account
    # and service.
    # @param [String] aname Required parameter: Account name.
    # @param [String] sname Required parameter: Service name.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def deregister_callback(aname,
                            sname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/m2m/v1/callbacks/{aname}/name/{sname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .template_param(new_parameter(sname, key: 'sname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CallbackActionResult.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Error response.',
                                 ConnectivityManagementResultException))
        .execute
    end
  end
end
