# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceSMSMessagingController
  class DeviceSMSMessagingController < BaseController
    # Sends an SMS message to one device. Messages are queued on the M2M MC
    # Platform and sent as soon as possible, but they may be delayed due to
    # traffic and routing considerations.
    # @param [GIOSMSSendRequest] body Required parameter: SMS message to an
    # indiividual device.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def send_an_sms_message(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/sms',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GIORequestResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('default',
                                 'Error response',
                                 GIORestErrorResponseException))
        .execute
    end

    # Retrieves queued SMS messages sent by all M2M MC devices associated with
    # an account.
    # @param [String] account_name Required parameter: Numeric account name
    # @param [String] mnext Optional parameter: Continue the previous query from
    # the pageUrl in Location Header
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def get_sms_messages(account_name,
                         mnext: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/m2m/v1/sms/{accountName}/history',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .query_param(new_parameter(mnext, key: 'next'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SmsMessagesResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('default',
                                 'Error response',
                                 GIORestErrorResponseException))
        .execute
    end

    # Starts delivery of SMS messages for the specified account.
    # @param [String] account_name Required parameter: Numeric account name
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def start_sms_message_delivery(account_name)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/m2m/v1/sms/{accountName}/startCallbacks',
                                     Server::THINGSPACE)
                   .template_param(new_parameter(account_name, key: 'accountName')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SuccessResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('default',
                                 'Error response',
                                 GIORestErrorResponseException))
        .execute
    end

    # Returns a list of sms history for a given device during a specified time
    # frame.
    # @param [SMSEventHistoryRequest] body Required parameter: Device Query
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_sms_message_history(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/m2m/v1/devices/sms/history/actions/list',
                                     Server::THINGSPACE)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(GIORequestResponse.method(:from_hash))
                    .is_api_response(true)
                    .local_error('default',
                                 'Error response',
                                 GIORestErrorResponseException))
        .execute
    end
  end
end
