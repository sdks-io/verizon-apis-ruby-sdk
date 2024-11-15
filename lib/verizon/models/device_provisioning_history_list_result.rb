# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to return the provisioning history of a specified device during a
  # specified time period.
  class DeviceProvisioningHistoryListResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # False for a status 200 response.True for a status 202 response, indicating
    # that there is more data to be retrieved.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # The provisioning history of a specified device during a specified time
    # period.
    # @return [Array[ProvisioningHistory]]
    attr_accessor :provisioning_history

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['provisioning_history'] = 'provisioningHistory'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        has_more_data
        provisioning_history
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(has_more_data = SKIP, provisioning_history = SKIP)
      @has_more_data = has_more_data unless has_more_data == SKIP
      @provisioning_history = provisioning_history unless provisioning_history == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      # Parameter is an array, so we need to iterate through it
      provisioning_history = nil
      unless hash['provisioningHistory'].nil?
        provisioning_history = []
        hash['provisioningHistory'].each do |structure|
          provisioning_history << (ProvisioningHistory.from_hash(structure) if structure)
        end
      end

      provisioning_history = SKIP unless hash.key?('provisioningHistory')

      # Create object from extracted values.
      DeviceProvisioningHistoryListResult.new(has_more_data,
                                              provisioning_history)
    end
  end
end
