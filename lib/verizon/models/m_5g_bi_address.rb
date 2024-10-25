# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBiAddress Model.
  class M5gBiAddress < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address_line1

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip_4

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address_line1'] = 'addressLine1'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['zip'] = 'zip'
      @_hash['zip_4'] = 'zip+4'
      @_hash['phone'] = 'phone'
      @_hash['phone_type'] = 'phoneType'
      @_hash['email_address'] = 'emailAddress'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        address_line1
        city
        state
        zip
        zip_4
        phone
        phone_type
        email_address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(address_line1 = SKIP, city = SKIP, state = SKIP, zip = SKIP,
                   zip_4 = SKIP, phone = SKIP, phone_type = SKIP,
                   email_address = SKIP)
      @address_line1 = address_line1 unless address_line1 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @zip = zip unless zip == SKIP
      @zip_4 = zip_4 unless zip_4 == SKIP
      @phone = phone unless phone == SKIP
      @phone_type = phone_type unless phone_type == SKIP
      @email_address = email_address unless email_address == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address_line1 = hash.key?('addressLine1') ? hash['addressLine1'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      zip_4 = hash.key?('zip+4') ? hash['zip+4'] : SKIP
      phone = hash.key?('phone') ? hash['phone'] : SKIP
      phone_type = hash.key?('phoneType') ? hash['phoneType'] : SKIP
      email_address = hash.key?('emailAddress') ? hash['emailAddress'] : SKIP

      # Create object from extracted values.
      M5gBiAddress.new(address_line1,
                       city,
                       state,
                       zip,
                       zip_4,
                       phone,
                       phone_type,
                       email_address)
    end
  end
end
