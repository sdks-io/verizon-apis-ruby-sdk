# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # M5gBiCustomerName Model.
  class M5gBiCustomerName < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :middle_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :suffex

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'firstName'
      @_hash['last_name'] = 'lastName'
      @_hash['middle_name'] = 'middleName'
      @_hash['title'] = 'title'
      @_hash['suffex'] = 'suffex'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        middle_name
        title
        suffex
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(first_name = SKIP, last_name = SKIP, middle_name = SKIP,
                   title = SKIP, suffex = SKIP)
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @middle_name = middle_name unless middle_name == SKIP
      @title = title unless title == SKIP
      @suffex = suffex unless suffex == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('firstName') ? hash['firstName'] : SKIP
      last_name = hash.key?('lastName') ? hash['lastName'] : SKIP
      middle_name = hash.key?('middleName') ? hash['middleName'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      suffex = hash.key?('suffex') ? hash['suffex'] : SKIP

      # Create object from extracted values.
      M5gBiCustomerName.new(first_name,
                            last_name,
                            middle_name,
                            title,
                            suffex)
    end
  end
end