# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # UsageTriggerManagementController
  class UsageTriggerManagementController < BaseController
    # Create a new usage trigger, which will send an alert when the number of
    # device location service transactions reaches a specified percentage of the
    # monthly subscription amount.
    # @param [UsageTriggerAddRequest] body Optional parameter: License
    # assignment.
    # @return [UsageTriggerResponse] response from the API call
    def create_new_trigger(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/usage/triggers',
                                     Server::SUBSCRIPTION_SERVER)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UsageTriggerResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end

    # Update an existing usage trigger
    # @param [String] trigger_id Required parameter: Usage trigger ID
    # @param [UsageTriggerUpdateRequest] body Optional parameter: New trigger
    # values
    # @return [UsageTriggerResponse] response from the API call
    def update_trigger(trigger_id,
                       body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/usage/triggers/{triggerId}',
                                     Server::SUBSCRIPTION_SERVER)
                   .template_param(new_parameter(trigger_id, key: 'triggerId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UsageTriggerResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end

    # eletes the specified usage trigger from the given account
    # @param [String] account_name Required parameter: Account name
    # @param [String] trigger_id Required parameter: Usage trigger ID
    # @return [DeviceLocationSuccessResult] response from the API call
    def delete_trigger(account_name,
                       trigger_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/usage/accounts/{accountName}/triggers/{triggerId}',
                                     Server::SUBSCRIPTION_SERVER)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .template_param(new_parameter(trigger_id, key: 'triggerId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceLocationSuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error',
                                DeviceLocationResultException))
        .execute
    end
  end
end
