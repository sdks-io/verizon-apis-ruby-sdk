# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DevicesLocationsController
  class DevicesLocationsController < BaseController
    # This locations endpoint retrieves the locations for a list of devices.
    # @param [LocationRequest] body Required parameter: Request to obtain
    # location of devices.
    # @return [Array[Location]] response from the API call
    def list_devices_locations_synchronous(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/locations',
                                     Server::DEVICE_LOCATION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Location.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Requests the current or cached location of up to 10,000 IoT or consumer
    # devices (phones, tablets. etc.). This request returns a synchronous
    # transaction ID, and the location information for each device is returned
    # asynchronously as a DeviceLocation callback message.
    # @param [LocationRequest] body Required parameter: An asynchronous request
    # to obtain locations of devices.
    # @return [SynchronousLocationRequestResult] response from the API call
    def list_devices_locations_asynchronous(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/devicelocations',
                                     Server::DEVICE_LOCATION)
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SynchronousLocationRequestResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Cancel a queued or unfinished device location request.
    # @param [String] account_name Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] txid Required parameter: Transaction ID of the request to
    # cancel, from the synchronous response to the original request.
    # @return [TransactionID] response from the API call
    def cancel_device_location_request(account_name,
                                       txid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/devicelocations/{txid}',
                                     Server::DEVICE_LOCATION)
                   .query_param(new_parameter(account_name, key: 'accountName'))
                   .template_param(new_parameter(txid, key: 'txid')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(TransactionID.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Request an asynchronous device location report.
    # @param [LocationRequest] body Required parameter: Request for device
    # location report.
    # @return [AsynchronousLocationRequestResult] response from the API call
    def create_location_report(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/locationreports',
                                     Server::DEVICE_LOCATION)
                   .header_param(new_parameter('*/*', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AsynchronousLocationRequestResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Download a completed asynchronous device location report.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] txid Required parameter: Transaction ID from POST
    # /locationreports response.
    # @param [Integer] startindex Required parameter: Zero-based number of the
    # first record to return.
    # @return [LocationReport] response from the API call
    def retrieve_location_report(account,
                                 txid,
                                 startindex)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/locationreports/{account}/report/{txid}/index/{startindex}',
                                     Server::DEVICE_LOCATION)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(txid, key: 'txid')
                                    .should_encode(true))
                   .template_param(new_parameter(startindex, key: 'startindex')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(LocationReport.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Returns the current status of a requested device location report.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] txid Required parameter: Transaction ID of the report.
    # @return [LocationReportStatus] response from the API call
    def get_location_report_status(account,
                                   txid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/locationreports/{account}/report/{txid}/status',
                                     Server::DEVICE_LOCATION)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(txid, key: 'txid')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(LocationReportStatus.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end

    # Cancel a queued device location report.
    # @param [String] account Required parameter: Account identifier in
    # "##########-#####".
    # @param [String] txid Required parameter: Transaction ID of the report to
    # cancel.
    # @return [TransactionID] response from the API call
    def cancel_queued_location_report_generation(account,
                                                 txid)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/locationreports/{account}/report/{txid}',
                                     Server::DEVICE_LOCATION)
                   .template_param(new_parameter(account, key: 'account')
                                    .should_encode(true))
                   .template_param(new_parameter(txid, key: 'txid')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(TransactionID.method(:from_hash))
                   .is_api_response(true)
                   .local_error('default',
                                'Unexpected error.',
                                DeviceLocationResultException))
        .execute
    end
  end
end
