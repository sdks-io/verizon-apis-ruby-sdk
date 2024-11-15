# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Device Id details.
  class DeviceIdentifier < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Kind of device.
    # @return [String]
    attr_accessor :kind

    # Device Identity number.
    # @return [String]
    attr_accessor :id

    # Device MDN number.
    # @return [String]
    attr_accessor :mdn

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['kind'] = 'kind'
      @_hash['id'] = 'id'
      @_hash['mdn'] = 'mdn'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mdn
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(kind = nil, id = nil, mdn = SKIP)
      @kind = kind
      @id = id
      @mdn = mdn unless mdn == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      kind = hash.key?('kind') ? hash['kind'] : nil
      id = hash.key?('id') ? hash['id'] : nil
      mdn = hash.key?('mdn') ? hash['mdn'] : SKIP

      # Create object from extracted values.
      DeviceIdentifier.new(kind,
                           id,
                           mdn)
    end
  end
end