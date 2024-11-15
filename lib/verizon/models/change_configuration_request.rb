# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The request body identifies the device and the values to set.
  class ChangeConfigurationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the authenticating billing account, in the format
    # `{"billingaccountid":"1234567890-12345"}`.
    # @return [AccountIdentifier]
    attr_accessor :accountidentifier

    # The ID of the target to delete, in the format {"id":
    # "dd1682d3-2d80-cefc-f3ee-25154800beff"}.
    # @return [ResourceIdentifier]
    attr_accessor :resourceidentifier

    # List of the field names and values to set.
    # @return [Configuration]
    attr_accessor :configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['accountidentifier'] = 'accountidentifier'
      @_hash['resourceidentifier'] = 'resourceidentifier'
      @_hash['configuration'] = 'configuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        accountidentifier
        resourceidentifier
        configuration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(accountidentifier = SKIP, resourceidentifier = SKIP,
                   configuration = SKIP)
      @accountidentifier = accountidentifier unless accountidentifier == SKIP
      @resourceidentifier = resourceidentifier unless resourceidentifier == SKIP
      @configuration = configuration unless configuration == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      accountidentifier = AccountIdentifier.from_hash(hash['accountidentifier']) if
        hash['accountidentifier']
      resourceidentifier = ResourceIdentifier.from_hash(hash['resourceidentifier']) if
        hash['resourceidentifier']
      configuration = Configuration.from_hash(hash['configuration']) if hash['configuration']

      # Create object from extracted values.
      ChangeConfigurationRequest.new(accountidentifier,
                                     resourceidentifier,
                                     configuration)
    end
  end
end
