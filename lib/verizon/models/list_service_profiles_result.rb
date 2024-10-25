# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Response on successful retrieval of service profiles.
  class ListServiceProfilesResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # HTTP status code.
    # @return [String]
    attr_accessor :status

    # A comma delimited list of all the service profiles registered under your
    # API key.
    # @return [Array[String]]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status = SKIP, data = SKIP)
      @status = status unless status == SKIP
      @data = data unless data == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      data = hash.key?('data') ? hash['data'] : SKIP

      # Create object from extracted values.
      ListServiceProfilesResult.new(status,
                                    data)
    end
  end
end
