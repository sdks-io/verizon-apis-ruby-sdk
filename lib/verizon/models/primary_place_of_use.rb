# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # PrimaryPlaceOfUse Model.
  class PrimaryPlaceOfUse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CustomerName]]
    attr_accessor :customer_name

    # TODO: Write general description for this method
    # @return [Array[Address]]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_name'] = 'customerName'
      @_hash['address'] = 'address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_name
        address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_name = SKIP, address = SKIP)
      @customer_name = customer_name unless customer_name == SKIP
      @address = address unless address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      customer_name = nil
      unless hash['customerName'].nil?
        customer_name = []
        hash['customerName'].each do |structure|
          customer_name << (CustomerName.from_hash(structure) if structure)
        end
      end

      customer_name = SKIP unless hash.key?('customerName')
      # Parameter is an array, so we need to iterate through it
      address = nil
      unless hash['address'].nil?
        address = []
        hash['address'].each do |structure|
          address << (Address.from_hash(structure) if structure)
        end
      end

      address = SKIP unless hash.key?('address')

      # Create object from extracted values.
      PrimaryPlaceOfUse.new(customer_name,
                            address)
    end
  end
end
