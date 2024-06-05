# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ConfigurationFilesController
  class ConfigurationFilesController < BaseController
    # You can retrieve a list of configuration or supplementary of files for an
    # account.
    # @param [String] acc Required parameter: Account identifier.
    # @param [String] distribution_type Required parameter: Filter the
    # distributionType to only retrieve files for a specific distribution
    # type.
    # @return [RetrievesAvailableFilesResponseList] response from the API call
    def get_list_of_files(acc,
                          distribution_type)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/files/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .query_param(new_parameter(distribution_type, key: 'distributionType'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(RetrievesAvailableFilesResponseList.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end

    # Uploads a configuration/supplementary file for an account. ThingSpace
    # generates a fileName after the upload and is returned in the response.
    # @param [String] acc Required parameter: Account identifier.
    # @param [File | UploadIO] fileupload Optional parameter: The file to
    # upload.
    # @param [String] file_version Optional parameter: Version of the file.
    # @param [String] make Optional parameter: The software-applicable device
    # make.
    # @param [String] model Optional parameter: The software-applicable device
    # model.
    # @param [String] local_target_path Optional parameter: Local target path on
    # the device.
    # @return [UploadConfigurationFilesResponse] response from the API call
    def upload_config_file(acc,
                           fileupload: nil,
                           file_version: nil,
                           make: nil,
                           model: nil,
                           local_target_path: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/files/{acc}',
                                     Server::SOFTWARE_MANAGEMENT_V2)
                   .template_param(new_parameter(acc, key: 'acc')
                                    .should_encode(true))
                   .multipart_param(new_parameter(fileupload, key: 'fileupload')
                                     .default_content_type('application/octet-stream'))
                   .form_param(new_parameter(file_version, key: 'fileVersion'))
                   .form_param(new_parameter(make, key: 'make'))
                   .form_param(new_parameter(model, key: 'model'))
                   .form_param(new_parameter(local_target_path, key: 'localTargetPath'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('thingspace_oauth', 'VZ-M2M-Token')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(UploadConfigurationFilesResponse.method(:from_hash))
                   .is_api_response(true)
                   .local_error('400',
                                'Unexpected error.',
                                FotaV2ResultException))
        .execute
    end
  end
end
