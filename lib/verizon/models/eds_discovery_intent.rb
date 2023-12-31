# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # EdsDiscoveryIntent Model.
  class EdsDiscoveryIntent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # UEIdentity to discover EDS location service.
    # @return [String]
    attr_accessor :ue_identity

    # Default type for ueIdentityType.
    # @return [UEIdentityTypeEnum]
    attr_accessor :ue_identity_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ue_identity'] = 'ueIdentity'
      @_hash['ue_identity_type'] = 'ueIdentityType'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ue_identity
        ue_identity_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ue_identity = SKIP,
                   ue_identity_type = UEIdentityTypeEnum::IPADDRESS)
      @ue_identity = ue_identity unless ue_identity == SKIP
      @ue_identity_type = ue_identity_type unless ue_identity_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ue_identity = hash.key?('ueIdentity') ? hash['ueIdentity'] : SKIP
      ue_identity_type =
        hash['ueIdentityType'] ||= UEIdentityTypeEnum::IPADDRESS

      # Create object from extracted values.
      EdsDiscoveryIntent.new(ue_identity,
                             ue_identity_type)
    end
  end
end
