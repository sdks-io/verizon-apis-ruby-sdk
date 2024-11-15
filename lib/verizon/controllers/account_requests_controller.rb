# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AccountRequestsController
  class AccountRequestsController < BaseController
    # Returns the current status of an asynchronous request that was made for a
    # single device.
    # @param [String] aname Required parameter: Account name.
    # @param [String] request_id Required parameter: UUID from synchronous
    # response.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_current_asynchronous_request_status(aname,
                                                request_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/accounts/{aname}/requests/{requestId}/status',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .template_param(new_parameter(request_id, key: 'requestId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(AsynchronousRequestResult.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Error response.',
                                 ConnectivityManagementResultException))
        .execute
    end
  end
end