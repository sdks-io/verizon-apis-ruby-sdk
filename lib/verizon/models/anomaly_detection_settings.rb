# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Settings for anomaly detection.
  class AnomalyDetectionSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Indicates if the account name used has anomaly detection.<br />Success -
    # The account has anomaly detection.<br />Failure - The account does not
    # have anomaly detection.
    # @return [String]
    attr_accessor :account_name

    # Details for sensitivity parameters.
    # @return [SensitivityParameters]
    attr_accessor :sensitivity_parameter

    # Indicates if anomaly detection is active on the account<br />Active -
    # Anomaly detection is active<br />Disabled- Anomaly detection is not
    # active.
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['sensitivity_parameter'] = 'sensitivityParameter'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_name
        sensitivity_parameter
        status
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = SKIP, sensitivity_parameter = SKIP,
                   status = SKIP)
      @account_name = account_name unless account_name == SKIP
      @sensitivity_parameter = sensitivity_parameter unless sensitivity_parameter == SKIP
      @status = status unless status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : SKIP
      sensitivity_parameter = SensitivityParameters.from_hash(hash['sensitivityParameter']) if
        hash['sensitivityParameter']
      status = hash.key?('status') ? hash['status'] : SKIP

      # Create object from extracted values.
      AnomalyDetectionSettings.new(account_name,
                                   sensitivity_parameter,
                                   status)
    end
  end
end
