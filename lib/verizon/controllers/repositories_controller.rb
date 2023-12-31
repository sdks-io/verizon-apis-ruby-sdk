# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # RepositoriesController
  class RepositoriesController < BaseController
    # Delete the repository.
    # @param [String] account_name Required parameter: User account name.
    # @param [String] repository_name Required parameter: Name of the repository
    # which is about to be deleted.
    # @param [String] correlation_id Optional parameter: Example:
    # @return [EdgeServiceOnboardingDeleteResult] response from the API call
    def delete_repository(account_name,
                          repository_name,
                          correlation_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/v1/config/repository/{repositoryName}',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .template_param(new_parameter(repository_name, key: 'repositoryName')
                                    .should_encode(true))
                   .header_param(new_parameter(correlation_id, key: 'correlationId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(EdgeServiceOnboardingDeleteResult.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad Request.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('401',
                                'Unauthorized.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('404',
                                'Not found.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceOnboardingResultErrorException))
        .execute
    end

    # Get all repositories in the platform.
    # @param [String] account_name Required parameter: User account name.
    # @param [String] correlation_id Optional parameter: Example:
    # @param [String] type Optional parameter: Repository type.
    # @return [Array[Repository]] response from the API call
    def list_repositories(account_name,
                          correlation_id: nil,
                          type: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/v1/config/repository',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .header_param(new_parameter(correlation_id, key: 'correlationId'))
                   .query_param(new_parameter(type, key: 'type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Repository.method(:from_hash))
                   .is_api_response(true)
                   .is_response_array(true)
                   .local_error('401',
                                'Unauthorized.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('404',
                                'Not found.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceOnboardingResultErrorException))
        .execute
    end

    # Create a repository within user's organziation.
    # @param [String] account_name Required parameter: User account name.
    # @param [Repository] body Required parameter: Example:
    # @param [String] correlation_id Optional parameter: Example:
    # @return [Repository] response from the API call
    def create_repository(account_name,
                          body,
                          correlation_id: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/v1/config/repository',
                                     Server::SERVICES)
                   .header_param(new_parameter(account_name, key: 'AccountName'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter(correlation_id, key: 'correlationId'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Repository.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Bad Request.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('401',
                                'Unauthorized.',
                                EdgeServiceOnboardingResultErrorException)
                   .local_error('500',
                                'Internal Server Error.',
                                EdgeServiceOnboardingResultErrorException))
        .execute
    end
  end
end
