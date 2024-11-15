# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # StopMonitorRequest Model.
  class StopMonitorRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_name

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :monitor_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['monitor_ids'] = 'monitorIds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_name = nil, monitor_ids = nil)
      @account_name = account_name
      @monitor_ids = monitor_ids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      monitor_ids = hash.key?('monitorIds') ? hash['monitorIds'] : nil

      # Create object from extracted values.
      StopMonitorRequest.new(account_name,
                             monitor_ids)
    end
  end
end
