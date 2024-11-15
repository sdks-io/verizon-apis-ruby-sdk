# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # ResponseCode and/or a message indicating success or failure of the request.
  class ApiResponseCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Possible response codes.
    # @return [ResponseCodeEnum]
    attr_accessor :response_code

    # More details about the responseCode received.
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['response_code'] = 'responseCode'
      @_hash['message'] = 'message'
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

    def initialize(response_code = nil, message = nil)
      @response_code = response_code
      @message = message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      response_code = hash.key?('responseCode') ? hash['responseCode'] : nil
      message = hash.key?('message') ? hash['message'] : nil

      # Create object from extracted values.
      ApiResponseCode.new(response_code,
                          message)
    end
  end
end