# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Anomaly detection request.
  class AnomalyDetectionRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of a billing account. An account name is usually numeric, and
    # must include any leading zeros.
    # @return [String]
    attr_accessor :account_name

    # The type of request being made. anomaly is the request to activate anomaly
    # detection.
    # @return [String]
    attr_accessor :request_type

    # Details for sensitivity parameters.
    # @return [SensitivityParameters]
    attr_accessor :sensitivity_parameter

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['request_type'] = 'requestType'
      @_hash['sensitivity_parameter'] = 'sensitivityParameter'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        request_type
        sensitivity_parameter
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, request_type = SKIP,
                   sensitivity_parameter = SKIP)
      @account_name = account_name unless account_name == SKIP
      @request_type = request_type unless request_type == SKIP
      @sensitivity_parameter = sensitivity_parameter unless sensitivity_parameter == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      request_type = hash.key?('requestType') ? hash['requestType'] : SKIP
      sensitivity_parameter = SensitivityParameters.from_hash(hash['sensitivityParameter']) if
        hash['sensitivityParameter']

      # Create object from extracted values.
      AnomalyDetectionRequest.new(account_name,
                                  request_type,
                                  sensitivity_parameter)
    end
  end
end