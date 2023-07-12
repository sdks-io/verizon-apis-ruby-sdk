# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # A label for a single device.
  class DeviceLabels < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The label you want to associate with the device.
    # @return [String]
    attr_accessor :name

    # The value of label
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   value = SKIP)
      @name = name unless name == SKIP
      @value = value unless value == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP

      # Create object from extracted values.
      DeviceLabels.new(name,
                       value)
    end
  end
end