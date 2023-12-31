# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ServiceLaunchProfilesController
  class ServiceLaunchProfilesController < BaseController
    # Creates a service profile that describes the resource requirements of a
    # service.
    # @param [String] account_name Required parameter: User account name.
    # @param [CreateServiceProfileRequest] body Required parameter: Request for
    # creation of a service profile.
    # @return [ServicesProfileRegistration] response from the API call
    def create_service_profile(account_name,
                               body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/service/profile',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServicesProfileRegistration.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeServiceLaunchResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeServiceLaunchResultException))
        .execute
    end

    # Update the definition of a service profile.
    # @param [String] id Required parameter: Unique ID of the service profile.
    # @param [CreateServiceProfileRequest] body Required parameter: Request with
    # new information for updating the service profile.
    # @param [String] account_name Optional parameter: User account name.
    # @return [String] response from the API call
    def update_service_profile(id,
                               body,
                               account_name: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/v1/service/profile/{Id}',
                                     Server::SERVICES)
                   .template_param(new_parameter(id, key: 'Id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_api_response(true)
                   .is_primitive_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeServiceLaunchResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeServiceLaunchResultException))
        .execute
    end

    # Helps register a service profile.
    # @param [String] id Required parameter: Unique service profile ID.
    # @param [ServicesProfileRegistration] body Required parameter: Request for
    # registration of a service profile.
    # @param [String] account_name Optional parameter: User account name.
    # @return [ServicesProfileRegistrationResult] response from the API call
    def submit_service_profile(id,
                               body,
                               account_name: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/v1/service/profile/{id}/submit',
                                     Server::SERVICES)
                   .template_param(new_parameter(id, key: 'id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServicesProfileRegistrationResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeServiceLaunchResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeServiceLaunchResultException)
                   .local_error('412',
                                'Precondition Failed.',
                                EdgeServiceLaunchResultException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceLaunchResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeServiceLaunchResultException))
        .execute
    end
  end
end
