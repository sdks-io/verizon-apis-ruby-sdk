# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gEdgePlatformsController
  class M5gEdgePlatformsController < BaseController
    # Returns a list of optimal MEC Platforms where you can register your
    # deployed application. **Note:** If a query is sent with all of the
    # parameters, it will fail with a "400" error. You can search based on the
    # following parameter combinations - region plus Service Profile ID and
    # subscriber density (density is optional but recommended), region plus
    # UEIdentity(Including UEIdentity Type) or Service Profile ID plus
    # UEIdentity(Including UEIdentity Type).
    # @param [String] region Optional parameter: MEC region name. Current valid
    # values are US_WEST_2 and US_EAST_1.
    # @param [String] service_profile_id Optional parameter: Unique identifier
    # of the service profile.
    # @param [Integer] subscriber_density Optional parameter: Minimum number of
    # 4G/5G subscribers per square kilometer.
    # @param [UserEquipmentIdentityTypeEnum] ue_identity_type Optional
    # parameter: Type of User Equipment identifier used in `UEIdentity`.
    # @param [String] ue_identity Optional parameter: The identifier value for
    # User Equipment. The type of identifier is defined by the 'UEIdentityType'
    # parameter. The`IPAddress`format can be IPv4 or IPv6.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_mec_platforms(region: nil,
                           service_profile_id: nil,
                           subscriber_density: nil,
                           ue_identity_type: nil,
                           ue_identity: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/mecplatforms',
                                     Server::EDGE_DISCOVERY)
                   .query_param(new_parameter(region, key: 'region'))
                   .query_param(new_parameter(service_profile_id, key: 'serviceProfileId'))
                   .query_param(new_parameter(subscriber_density, key: 'subscriberDensity'))
                   .query_param(new_parameter(ue_identity_type, key: 'UEIdentityType'))
                   .query_param(new_parameter(ue_identity, key: 'UEIdentity'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListMECPlatformsResult.method(:from_hash))
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

    # List the geographical regions available, based on the user's bearer token.
    # **Note:** Country code, Metropolitan area, Area and Zone are future
    # functionality and will currently return a "null" value.
    # @return [ApiResponse]  the complete http response with raw body and status code.
    def list_regions
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/regions',
                                     Server::EDGE_DISCOVERY)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ListRegionsResult.method(:from_hash))
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
