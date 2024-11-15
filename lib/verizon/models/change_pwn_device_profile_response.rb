# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to change PWN device profile
  class ChangePWNDeviceProfileResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A unique string that associates the request with the results that are sent
    # via a callback service.
    # @return [String]
    attr_accessor :request_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'requestId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        request_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_id = SKIP)
      @request_id = request_id unless request_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('requestId') ? hash['requestId'] : SKIP

      # Create object from extracted values.
      ChangePWNDeviceProfileResponse.new(request_id)
    end
  end
end
