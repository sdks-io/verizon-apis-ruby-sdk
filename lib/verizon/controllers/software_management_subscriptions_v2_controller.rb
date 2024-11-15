# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SoftwareManagementSubscriptionsV2Controller
  class SoftwareManagementSubscriptionsV2Controller < BaseController
    # This endpoint retrieves a FOTA subscription by account.
    # @param [String] account Required parameter: Account identifier.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_account_subscription_status(account)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions/{account}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(FotaV2Subscription.method(:from_hash))
                    .is_api_response(true)
                    .local_error('400',
                                 'Unexpected error.',
                                 FotaV2ResultException))
        .execute
    end
  end
end