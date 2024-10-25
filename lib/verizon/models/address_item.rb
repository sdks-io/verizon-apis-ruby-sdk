# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Address details.
  class AddressItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Street Address.
    # @return [String]
    attr_accessor :address_line1

    # Optional address information.
    # @return [String]
    attr_accessor :address_line2

    # Name of the city.
    # @return [String]
    attr_accessor :city

    # State code.
    # @return [String]
    attr_accessor :state

    # Country.
    # @return [String]
    attr_accessor :country

    # Five digit zipcode.
    # @return [String]
    attr_accessor :zip

    # Four digit zip code.
    # @return [String]
    attr_accessor :zip4

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address_line1'] = 'addressLine1'
      @_hash['address_line2'] = 'addressLine2'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['country'] = 'country'
      @_hash['zip'] = 'zip'
      @_hash['zip4'] = 'zip4'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        address_line1
        address_line2
        city
        state
        country
        zip
        zip4
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(address_line1 = SKIP, address_line2 = SKIP, city = SKIP,
                   state = SKIP, country = SKIP, zip = SKIP, zip4 = SKIP)
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @country = country unless country == SKIP
      @zip = zip unless zip == SKIP
      @zip4 = zip4 unless zip4 == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address_line1 = hash.key?('addressLine1') ? hash['addressLine1'] : SKIP
      address_line2 = hash.key?('addressLine2') ? hash['addressLine2'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      zip4 = hash.key?('zip4') ? hash['zip4'] : SKIP

      # Create object from extracted values.
      AddressItem.new(address_line1,
                      address_line2,
                      city,
                      state,
                      country,
                      zip,
                      zip4)
    end
  end
end
