# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # SMSController
  class SMSController < BaseController
    # When HTTP status is 202, a URL will be returned in the Location header of
    # the form /sms/{aname}/history?next={token}. This URL can be used to
    # request the next set of messages.
    # @param [String] aname Required parameter: Account name.
    # @param [Integer] mnext Optional parameter: Continue the previous query
    # from the URL in Location Header.
    # @return [SMSMessagesQueryResult] response from the API call
    def list_devices_sms_messages(aname,
                                  mnext: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/sms/{aname}/history',
                                     Server::M2M)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .query_param(new_parameter(mnext, key: 'next'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SMSMessagesQueryResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # The messages are queued on the ThingSpace Platform and sent as soon as
    # possible, but they may be delayed due to traffic and routing
    # considerations.
    # @param [SMSSendRequest] body Required parameter: Request to send SMS.
    # @return [DeviceManagementResult] response from the API call
    def send_sms_to_device(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/sms',
                                     Server::M2M)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeviceManagementResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end

    # Tells the ThingSpace Platform to start sending mobile-originated SMS
    # messages through the EnhancedConnectivityService callback service. SMS
    # messages from devices are queued until they are retrieved by your
    # application, either by callback or synchronously with GET
    # /sms/{accountName}/history.
    # @param [String] aname Required parameter: Account name.
    # @return [ConnectivityManagementSuccessResult] response from the API call
    def start_queued_sms_delivery(aname)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/v1/sms/{aname}/startCallbacks',
                                     Server::M2M)
                   .template_param(new_parameter(aname, key: 'aname')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ConnectivityManagementSuccessResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Error response.',
                                ConnectivityManagementResultException))
        .execute
    end
  end
end
