# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response to deregister an application's Service Endpoint from one or more
  # Multi-access Edge Compute (MEC) Platforms.
  class DeregisterServiceEndpointResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # HTTP status code.
    # @return [String]
    attr_accessor :status

    # EdgeAppServicesID that are deleted or error details in case of an error.
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['message'] = 'message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status = SKIP,
                   message = SKIP)
      @status = status unless status == SKIP
      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP

      # Create object from extracted values.
      DeregisterServiceEndpointResult.new(status,
                                          message)
    end
  end
end
