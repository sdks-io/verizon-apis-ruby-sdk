# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # The customer name and the address of the device's primary place of use.
  # Leave these fields empty to use the account profile address as the primary
  # place of use. These values will be applied to all devices in the request.If
  # the account is enabled for non-geographic MDNs and the device supports it,
  # the primaryPlaceOfUse address will also be used to derive the MDN for the
  # device.
  class PlaceOfUse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The customer address for the line's primary place of use, for line usage
    # taxation.
    # @return [Address]
    attr_accessor :address

    # The customer name to be used for line usage taxation.
    # @return [CustomerName]
    attr_accessor :customer_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address'] = 'address'
      @_hash['customer_name'] = 'customerName'
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

    def initialize(address = nil, customer_name = nil)
      @address = address
      @customer_name = customer_name
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address = Address.from_hash(hash['address']) if hash['address']
      customer_name = CustomerName.from_hash(hash['customerName']) if hash['customerName']

      # Create object from extracted values.
      PlaceOfUse.new(address,
                     customer_name)
    end
  end
end
