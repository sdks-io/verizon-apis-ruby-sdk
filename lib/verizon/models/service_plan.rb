# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # Details of the service plan.
  class ServicePlan < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The code that is used by the carrier for the service plan.
    # @return [String]
    attr_accessor :carrier_service_plan_code

    # The code of the service plan, which may not be the same as the name.
    # @return [String]
    attr_accessor :code

    # Any extended attributes for the service plan, as Key and Value pairs.
    # @return [Array[CustomFields]]
    attr_accessor :extended_attributes

    # The name of the service plan.
    # @return [String]
    attr_accessor :name

    # The size of the service plan in kilobytes.
    # @return [Integer]
    attr_accessor :size_kb

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['carrier_service_plan_code'] = 'carrierServicePlanCode'
      @_hash['code'] = 'code'
      @_hash['extended_attributes'] = 'extendedAttributes'
      @_hash['name'] = 'name'
      @_hash['size_kb'] = 'sizeKb'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        carrier_service_plan_code
        code
        extended_attributes
        name
        size_kb
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(carrier_service_plan_code = SKIP, code = SKIP,
                   extended_attributes = SKIP, name = SKIP, size_kb = SKIP)
      unless carrier_service_plan_code == SKIP
        @carrier_service_plan_code =
          carrier_service_plan_code
      end
      @code = code unless code == SKIP
      @extended_attributes = extended_attributes unless extended_attributes == SKIP
      @name = name unless name == SKIP
      @size_kb = size_kb unless size_kb == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      carrier_service_plan_code =
        hash.key?('carrierServicePlanCode') ? hash['carrierServicePlanCode'] : SKIP
      code = hash.key?('code') ? hash['code'] : SKIP
      # Parameter is an array, so we need to iterate through it
      extended_attributes = nil
      unless hash['extendedAttributes'].nil?
        extended_attributes = []
        hash['extendedAttributes'].each do |structure|
          extended_attributes << (CustomFields.from_hash(structure) if structure)
        end
      end

      extended_attributes = SKIP unless hash.key?('extendedAttributes')
      name = hash.key?('name') ? hash['name'] : SKIP
      size_kb = hash.key?('sizeKb') ? hash['sizeKb'] : SKIP

      # Create object from extracted values.
      ServicePlan.new(carrier_service_plan_code,
                      code,
                      extended_attributes,
                      name,
                      size_kb)
    end
  end
end
