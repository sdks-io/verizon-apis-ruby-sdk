# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # DeviceLocationCallback Model.
  class DeviceLocationCallback < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The name of the callback service.
    # @return [CallbackServiceNameEnum]
    attr_accessor :name

    # The location of your callback listener.
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['url'] = 'url'
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

    def initialize(name = nil, url = nil)
      @name = name
      @url = url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      url = hash.key?('url') ? hash['url'] : nil

      # Create object from extracted values.
      DeviceLocationCallback.new(name,
                                 url)
    end
  end
end
