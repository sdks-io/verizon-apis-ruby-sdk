# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AccountsController
  class AccountsController < BaseController
    # Returns information about a specified account.
    # @param [String] aname Required parameter: Account name.
    # @return [Account] response from the API call
    def get_account_information(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/accounts/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Account.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # Returns a list and details of all custom services and states defined for a
    # specified account.
    # @param [String] aname Required parameter: Account name.
    # @return [AccountStatesAndServices] response from the API call
    def list_account_states_and_services(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/accounts/{aname}/statesandservices',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AccountStatesAndServices.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # When HTTP status is 202, a URL will be returned in the Location header of
    # the form /leads/{aname}?next={token}. This URL can be used to request the
    # next set of leads.
    # @param [String] aname Required parameter: Account name.
    # @param [Integer] mnext Optional parameter: Continue the previous query
    # from the pageUrl in Location Header.
    # @return [AccountLeadsResult] response from the API call
    def list_account_leads(aname,
                           mnext: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/leads/{aname}',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .query_param(new_parameter(mnext, key: 'next'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AccountLeadsResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end
  end
end
