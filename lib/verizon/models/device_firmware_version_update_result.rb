# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Device firmware version update response.
  class DeviceFirmwareVersionUpdateResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account identifier.
    # @return [String]
    attr_accessor :account_name

    # Request identifier.
    # @return [String]
    attr_accessor :request_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_name'] = 'accountName'
      @_hash['request_id'] = 'requestId'
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

    def initialize(account_name = nil, request_id = nil)
      @account_name = account_name
      @request_id = request_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_name = hash.key?('accountName') ? hash['accountName'] : nil
      request_id = hash.key?('requestId') ? hash['requestId'] : nil

      # Create object from extracted values.
      DeviceFirmwareVersionUpdateResult.new(account_name,
                                            request_id)
    end
  end
end
