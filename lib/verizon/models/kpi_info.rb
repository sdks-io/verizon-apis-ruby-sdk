# verizon
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Verizon
  # KPI Info Object
  class KPIInfo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :node_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :node_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :unit

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :category

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :time_of_last_update

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash['node_name'] = 'nodeName'
      @_hash['node_type'] = 'nodeType'
      @_hash['description'] = 'description'
      @_hash['unit'] = 'unit'
      @_hash['category'] = 'category'
      @_hash['time_of_last_update'] = 'timeOfLastUpdate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        value
        node_name
        node_type
        description
        unit
        category
        time_of_last_update
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP, value = SKIP, node_name = SKIP,
                   node_type = SKIP, description = SKIP, unit = SKIP,
                   category = SKIP, time_of_last_update = SKIP)
      @name = name unless name == SKIP
      @value = value unless value == SKIP
      @node_name = node_name unless node_name == SKIP
      @node_type = node_type unless node_type == SKIP
      @description = description unless description == SKIP
      @unit = unit unless unit == SKIP
      @category = category unless category == SKIP
      @time_of_last_update = time_of_last_update unless time_of_last_update == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      node_name = hash.key?('nodeName') ? hash['nodeName'] : SKIP
      node_type = hash.key?('nodeType') ? hash['nodeType'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      unit = hash.key?('unit') ? hash['unit'] : SKIP
      category = hash.key?('category') ? hash['category'] : SKIP
      time_of_last_update =
        hash.key?('timeOfLastUpdate') ? hash['timeOfLastUpdate'] : SKIP

      # Create object from extracted values.
      KPIInfo.new(name,
                  value,
                  node_name,
                  node_type,
                  description,
                  unit,
                  category,
                  time_of_last_update)
    end
  end
end
