# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ServiceProfilesController
  class ServiceProfilesController < BaseController
    # List all service profiles registered under your API key.
    # @return [ListServiceProfilesResult] response from the API call
    def list_service_profiles
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/serviceprofiles',
                                     Server::EDGE_DISCOVERY)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListServiceProfilesResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeDiscoveryResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeDiscoveryResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeDiscoveryResultException))
        .execute
    end

    # Creates a service profile that describes the resource requirements of a
    # service.
    # @param [ResourcesServiceProfile] body Required parameter: The request body
    # passes all of the needed parameters to create a service profile.
    # Parameters will be edited here rather than the **Parameters** section
    # above. The `maxLatencyMs` and `clientType` parameters are both required in
    # the request body. **Note:** The `maxLatencyMs` value must be submitted in
    # multiples of 5. Additionally, "GPU" is future functionality and the values
    # are not captured.
    # @return [CreateServiceProfileResult] response from the API call
    def create_service_profile(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/serviceprofiles',
                                     Server::EDGE_DISCOVERY)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(CreateServiceProfileResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeDiscoveryResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeDiscoveryResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeDiscoveryResultException))
        .execute
    end

    # Update the definition of a Service Profile.
    # @param [String] service_profile_id Required parameter: Example:
    # @param [ResourcesServiceProfile] body Required parameter: The request body
    # passes the rest of the needed parameters to create a service profile. The
    # `maxLatencyMs` and `clientType` parameters are both required in the
    # request body. **Note:** The `maxLatencyMs` value must be submitted in
    # multiples of 5. Additionally, "GPU" is future functionality and the values
    # are not captured. Default values to use are shown.
    # @return [UpdateServiceProfileResult] response from the API call
    def update_service_profile(service_profile_id,
                               body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/serviceprofiles/{serviceProfileId}',
                                     Server::EDGE_DISCOVERY)
                   .template_param(new_parameter(service_profile_id, key: 'serviceProfileId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UpdateServiceProfileResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeDiscoveryResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeDiscoveryResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeDiscoveryResultException))
        .execute
    end

    # Returns a specified service profile.
    # @param [String] service_profile_id Required parameter: Example:
    # @return [ResourcesServiceProfileWithId] response from the API call
    def get_service_profile(service_profile_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/serviceprofiles/{serviceProfileId}',
                                     Server::EDGE_DISCOVERY)
                   .template_param(new_parameter(service_profile_id, key: 'serviceProfileId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ResourcesServiceProfileWithId.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeDiscoveryResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeDiscoveryResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeDiscoveryResultException))
        .execute
    end

    # Delete Service Profile based on unique service profile ID.
    # @param [String] service_profile_id Required parameter: Example:
    # @return [DeleteServiceProfileResult] response from the API call
    def delete_service_profile(service_profile_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/serviceprofiles/{serviceProfileId}',
                                     Server::EDGE_DISCOVERY)
                   .template_param(new_parameter(service_profile_id, key: 'serviceProfileId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DeleteServiceProfileResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'HTTP 400 Bad Request.',
                                EdgeDiscoveryResultException)
                   .local_error('401',
                                'HTTP 401 Unauthorized.',
                                EdgeDiscoveryResultException)
                   .local_error('default',
                                'HTTP 500 Internal Server Error.',
                                EdgeDiscoveryResultException))
        .execute
    end
  end
end
