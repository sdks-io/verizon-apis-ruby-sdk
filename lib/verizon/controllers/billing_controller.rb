# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # BillingController
  class BillingController < BaseController
    # This endpoint allows user to retrieve the list of all accounts managed by
    # a primary account.
    # @param [String] account_name Required parameter: Primary account
    # identifier
    # @param [String] service_name Required parameter: Service name
    # @return [ManagedAccountsGetAllResponse] response from the API call
    def list_managed_account(account_name,
                             service_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/managedaccounts/{accountName}/service/{serviceName}',
                                     Server::SUBSCRIPTION_SERVER)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .template_param(new_parameter(service_name, key: 'serviceName')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ManagedAccountsGetAllResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end

    # Activates a managed billing service relationship between a managed account
    # and the primary account.
    # @param [ManagedAccountsProvisionRequest] body Required parameter: Service
    # name and list of accounts to add
    # @return [ManagedAccountsProvisionResponse] response from the API call
    def managed_account_action(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/managedaccounts/actions/provision',
                                     Server::SUBSCRIPTION_SERVER)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ManagedAccountsProvisionResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end

    # Deactivates a managed billing service relationship between a managed
    # account and the primary account.
    # @param [ManagedAccountCancelRequest] body Required parameter: Service name
    # and list of accounts to add
    # @return [ManagedAccountCancelResponse] response from the API call
    def cancel_managed_account_action(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/managedaccounts/actions/cancel',
                                     Server::SUBSCRIPTION_SERVER)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ManagedAccountCancelResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end

    # This endpoint allows user to add managed accounts to a primary account.
    # @param [ManagedAccountsAddRequest] body Required parameter: Service name
    # and list of accounts to add
    # @return [ManagedAccountsAddResponse] response from the API call
    def add_account(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/managedaccounts/actions/add',
                                     Server::SUBSCRIPTION_SERVER)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ManagedAccountsAddResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end
  end
end
