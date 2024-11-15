# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DailyUsageResponse Model.
  class DailyUsageResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A flag set to indicate if there is more than one page of data returned by
    # the query (true) or if only one page of data returned (false)
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more_data

    # A flag set to indicate if there is more than one page of data returned by
    # the query (true) or if only one page of data returned (false)
    # @return [GIODeviceId]
    attr_accessor :device_id

    # A flag set to indicate if there is more than one page of data returned by
    # the query (true) or if only one page of data returned (false)
    # @return [Array[DailyUsageHistory]]
    attr_accessor :usage_history

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['has_more_data'] = 'hasMoreData'
      @_hash['device_id'] = 'deviceId'
      @_hash['usage_history'] = 'usageHistory'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        has_more_data
        device_id
        usage_history
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(has_more_data = SKIP, device_id = SKIP, usage_history = SKIP)
      @has_more_data = has_more_data unless has_more_data == SKIP
      @device_id = device_id unless device_id == SKIP
      @usage_history = usage_history unless usage_history == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      has_more_data = hash.key?('hasMoreData') ? hash['hasMoreData'] : SKIP
      device_id = GIODeviceId.from_hash(hash['deviceId']) if hash['deviceId']
      # Parameter is an array, so we need to iterate through it
      usage_history = nil
      unless hash['usageHistory'].nil?
        usage_history = []
        hash['usageHistory'].each do |structure|
          usage_history << (DailyUsageHistory.from_hash(structure) if structure)
        end
      end

      usage_history = SKIP unless hash.key?('usageHistory')

      # Create object from extracted values.
      DailyUsageResponse.new(has_more_data,
                             device_id,
                             usage_history)
    end
  end
end
