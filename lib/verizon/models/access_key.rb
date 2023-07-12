# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # AccessKey Model.
  class AccessKey < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Access ID of the access key.
    # @return [String]
    attr_accessor :access_id

    # Secret key of the access key.
    # @return [String]
    attr_accessor :secret_key

    # Session token of the access key.
    # @return [String]
    attr_accessor :session_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_id'] = 'accessId'
      @_hash['secret_key'] = 'secretKey'
      @_hash['session_token'] = 'sessionToken'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        access_id
        secret_key
        session_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(access_id = SKIP,
                   secret_key = SKIP,
                   session_token = SKIP)
      @access_id = access_id unless access_id == SKIP
      @secret_key = secret_key unless secret_key == SKIP
      @session_token = session_token unless session_token == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_id = hash.key?('accessId') ? hash['accessId'] : SKIP
      secret_key = hash.key?('secretKey') ? hash['secretKey'] : SKIP
      session_token = hash.key?('sessionToken') ? hash['sessionToken'] : SKIP

      # Create object from extracted values.
      AccessKey.new(access_id,
                    secret_key,
                    session_token)
    end
  end
end
