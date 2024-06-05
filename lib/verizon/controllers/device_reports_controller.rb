# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceReportsController
  class DeviceReportsController < BaseController
    # Calculate aggregated report per day with number of sessions and usage
    # information. User will receive synchronous response for specified list of
    # devices (Max 10) and date range (Max 180 days).
    # @param [AggregateSessionReportRequest] body Required parameter: Aggregated
    # report request.
    # @return [AggregateSessionReport] response from the API call
    def calculate_aggregated_report_synchronous(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/report/aggregate',
                                     Server::HYPER_PRECISE_LOCATION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AggregateSessionReport.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request.',
                                HyperPreciseLocationResultException)
                   .local_error('401',
                                'Unauthorized request. Access token is missing or invalid.',
                                HyperPreciseLocationResultException)
                   .local_error('403',
                                'Forbidden request.',
                                HyperPreciseLocationResultException)
                   .local_error('404',
                                'Bad request. Not found.',
                                HyperPreciseLocationResultException)
                   .local_error('409',
                                'Bad request. Conflict state.',
                                HyperPreciseLocationResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                HyperPreciseLocationResultException))
        .execute
    end

    # Calculate aggregated report per day with number of sessions and usage
    # information. User will receive an asynchronous callback for the specified
    # list of devices (Max 10000) and date range (Max 180 days).
    # @param [AggregateSessionReportRequest] body Required parameter: Aggregated
    # session report request.
    # @return [AggregatedReportCallbackResult] response from the API call
    def calculate_aggregated_report_asynchronous(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/report/async/aggregate',
                                     Server::HYPER_PRECISE_LOCATION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(AggregatedReportCallbackResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request.',
                                HyperPreciseLocationResultException)
                   .local_error('401',
                                'Unauthorized request. Access token is missing or invalid.',
                                HyperPreciseLocationResultException)
                   .local_error('403',
                                'Forbidden request.',
                                HyperPreciseLocationResultException)
                   .local_error('404',
                                'Bad request. Not found.',
                                HyperPreciseLocationResultException)
                   .local_error('409',
                                'Bad request. Conflict state.',
                                HyperPreciseLocationResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                HyperPreciseLocationResultException))
        .execute
    end

    # Detailed report of session duration and number of bytes transferred per
    # day.
    # @param [SessionReportRequest] body Required parameter: Request for
    # sessions report.
    # @return [SessionReport] response from the API call
    def get_sessions_report(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/report/sessions',
                                     Server::HYPER_PRECISE_LOCATION)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SessionReport.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad request.',
                                HyperPreciseLocationResultException)
                   .local_error('401',
                                'Unauthorized request. Access token is missing or invalid.',
                                HyperPreciseLocationResultException)
                   .local_error('403',
                                'Forbidden request.',
                                HyperPreciseLocationResultException)
                   .local_error('404',
                                'Bad request. Not found.',
                                HyperPreciseLocationResultException)
                   .local_error('409',
                                'Bad request. Conflict state.',
                                HyperPreciseLocationResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                HyperPreciseLocationResultException))
        .execute
    end
  end
end
