# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Fault occurred while responding.
  class HyperPreciseLocationFault < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Hyper precise location fault code.
    # @return [String]
    attr_accessor :code

    # Hyper precise location fault message.
    # @return [String]
    attr_accessor :message

    # Hyper precise location fault description.
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['message'] = 'message'
      @_hash['description'] = 'description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        message
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = SKIP,
                   message = SKIP,
                   description = SKIP)
      @code = code unless code == SKIP
      @message = message unless message == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP

      # Create object from extracted values.
      HyperPreciseLocationFault.new(code,
                                    message,
                                    description)
    end
  end
end
